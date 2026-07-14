// ================================================
// consultas.cypher — 6 operaciones del proyecto
// Ejecutar en Neo4j Desktop o Browser después de init.cypher
// ================================================

// ── OP-1: Verificar estructura del grafo cargado ──

// Contar nodos por etiqueta
MATCH (n)
RETURN labels(n)[0] AS tipo_nodo, count(n) AS total
ORDER BY total DESC;

// Contar relaciones por tipo
MATCH ()-[r]->()
RETURN type(r) AS tipo_relacion, count(r) AS total
ORDER BY total DESC;


// ── OP-2: Mapa de dependencias de servicios ──

MATCH (a:Servicio)-[:DEPENDE_DE]->(b:Servicio)
RETURN a.nombre AS servicio,
       b.nombre AS depende_de,
       a.tipo   AS tipo_servicio
ORDER BY b.nombre;

MATCH (a:Servicio)-[:DEPENDE_DE]->(b:Servicio)
RETURN b.nombre AS servicio_critico, count(a) AS dependientes
ORDER BY dependientes DESC
LIMIT 5;


// ── OP-3: Tickets abiertos — estudiante, servicio y técnico ──

MATCH (e:Estudiante)-[:REPORTÓ]->(tk:Ticket)-[:AFECTA]->(svc:Servicio)
WHERE tk.estado <> 'cerrado'
OPTIONAL MATCH (tk)-[:ASIGNADO_A]->(tec:Tecnico)
RETURN tk.id         AS ticket,
       tk.estado      AS estado,
       tk.prioridad   AS prioridad,
       e.nombre       AS reportado_por,
       svc.nombre     AS servicio_afectado,
       coalesce(tec.nombre, 'SIN ASIGNAR') AS tecnico
ORDER BY
  CASE tk.prioridad
    WHEN 'critica' THEN 1
    WHEN 'alta'    THEN 2
    WHEN 'media'   THEN 3
    ELSE 4
  END;


// ── OP-4: Cerrar ticket TK-106 ──

// OP-4a: Estado ANTES del cierre
MATCH (tk:Ticket {id:'TK-106'})
RETURN tk.id, tk.estado, tk.prioridad;

// OP-4b: Cerrar TK-106 y asignar técnico resolutor
MATCH (tk:Ticket {id:'TK-106'})
MATCH (tec:Tecnico {nombre:'Roberto Méndez'})
SET tk.estado = 'cerrado',
    tk.fecha_cierre = '2026-07-08'
CREATE (tec)-[:RESUELVE {fecha_resolucion:'2026-07-08'}]->(tk)
RETURN tk.id, tk.estado, tk.fecha_cierre, tec.nombre AS resuelto_por;

// OP-4c: Verificar DESPUÉS
MATCH (tec:Tecnico)-[r:RESUELVE]->(tk:Ticket {id:'TK-106'})
RETURN tk.id, tk.estado, tec.nombre, r.fecha_resolucion;

// OP-4d: Ticket ya cerrado — no se modifica
MATCH (tk:Ticket {id:'TK-101', estado:'cerrado'})
RETURN 'Ticket ya cerrado — no se modifica' AS mensaje, tk.estado;


// ── OP-5: ANÁLISIS DE IMPACTO EN CASCADA (H200) ──

// Paso A: ¿Qué servicios aloja H200?
MATCH (srv:Servidor {nombre:'H200'})-[:ALOJA]->(svc:Servicio)
RETURN srv.nombre AS servidor, svc.nombre AS servicio_caido;

// Paso B: Servicios afectados en cascada (profundidad 1-3)
MATCH (srv:Servidor {nombre:'H200'})-[:ALOJA]->(caido:Servicio)
MATCH path = (afectado:Servicio)-[:DEPENDE_DE*1..3]->(caido)
RETURN DISTINCT
  caido.nombre    AS servicio_caido,
  afectado.nombre AS servicio_afectado_en_cascada,
  length(path)    AS saltos
ORDER BY caido.nombre, saltos;

// Paso C: Proyectos bloqueados
MATCH (srv:Servidor {nombre:'H200'})-[:ALOJA]->(svc:Servicio)
MATCH (p:Proyecto)-[:USA]->(svc)
RETURN DISTINCT
  p.nombre   AS proyecto_bloqueado,
  svc.nombre AS servicio_caido,
  p.tipo     AS tipo_proyecto;

// Paso D: Estudiantes impactados con tickets activos
MATCH (srv:Servidor {nombre:'H200'})-[:ALOJA]->(svc:Servicio)
MATCH (p:Proyecto)-[:USA]->(svc)
MATCH (e:Estudiante)-[:TRABAJA_EN]->(p)
OPTIONAL MATCH (e)-[:REPORTÓ]->(tk:Ticket)
WHERE tk.estado <> 'cerrado'
RETURN DISTINCT
  e.nombre   AS estudiante_impactado,
  p.nombre   AS proyecto,
  svc.nombre AS via_servicio,
  coalesce(tk.id, 'Sin ticket activo') AS ticket_activo
ORDER BY e.nombre;

// Paso E: MEGA-QUERY — camino de 5 saltos
MATCH path =
  (srv:Servidor {nombre:'H200'})-[:ALOJA]->(svc:Servicio)
  <-[:USA]-(p:Proyecto)
  <-[:TRABAJA_EN]-(e:Estudiante)
  -[:REPORTÓ]->(tk:Ticket)
WHERE tk.estado <> 'cerrado'
RETURN
  srv.nombre AS servidor,
  svc.nombre AS servicio,
  p.nombre   AS proyecto,
  e.nombre   AS estudiante,
  tk.id      AS ticket,
  tk.prioridad AS prioridad,
  length(path) AS saltos_en_el_grafo
ORDER BY tk.prioridad;


// ── OP-6: Límite del modelo — estadísticas ──

MATCH (tec:Tecnico)-[r:RESUELVE]->(tk:Ticket)
RETURN
  tec.nombre  AS tecnico,
  tec.nivel   AS nivel,
  count(tk)   AS tickets_resueltos
ORDER BY tickets_resueltos DESC;

MATCH (tec:Tecnico)<-[:ASIGNADO_A]-(tk:Ticket)
WHERE tk.estado <> 'cerrado'
RETURN
  tec.nombre AS tecnico,
  count(tk)  AS carga_activa
ORDER BY carga_activa DESC;
