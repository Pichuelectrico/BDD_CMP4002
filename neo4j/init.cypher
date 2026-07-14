// ================================================
// init.cypher — Datos del grafo de incidencias
// Sistema de Gestión de Infraestructura IA
// Todos los datos son FICTICIOS
// ================================================

// Limpiar grafo anterior (útil para re-cargar)
MATCH (n) DETACH DELETE n;

// ── COORDINADORES ──────────────────────────────
CREATE
  (coord1:Coordinador {nombre: 'Daniel Riofrío', carrera: 'pregrado'}),
  (coord2:Coordinador {nombre: 'Felipe Grijalva', carrera: 'maestria'});

// ── ESTUDIANTES ────────────────────────────────
CREATE
  (e1:Estudiante {nombre: 'Ana García',           tipo: 'pregrado', email: 'ana.garcia@estud.usfq.edu.ec'}),
  (e2:Estudiante {nombre: 'Luis Morales',         tipo: 'maestria', email: 'luis.morales@estud.usfq.edu.ec'}),
  (e3:Estudiante {nombre: 'María Torres',         tipo: 'pregrado', email: 'maria.torres@estud.usfq.edu.ec'}),
  (e4:Estudiante {nombre: 'Carlos Ruiz',          tipo: 'maestria', email: 'carlos.ruiz@estud.usfq.edu.ec'}),
  (e5:Estudiante {nombre: 'Sofía López',          tipo: 'pregrado', email: 'sofia.lopez@estud.usfq.edu.ec'}),
  (e6:Estudiante {nombre: 'Pedro Sánchez',        tipo: 'maestria', email: 'pedro.sanchez@estud.usfq.edu.ec'}),
  (e7:Estudiante {nombre: 'Maria Emilia Granda',  tipo: 'pregrado', email: 'maria.emilia.granda@estud.usfq.edu.ec'}),
  (e8:Estudiante {nombre: 'Andrés Herrera',       tipo: 'maestria', email: 'andres.herrera@estud.usfq.edu.ec'}),
  (e9:Estudiante {nombre: 'Camila Vega',          tipo: 'pregrado', email: 'camila.vega@estud.usfq.edu.ec'}),
  (e10:Estudiante {nombre: 'Diego Paredes',       tipo: 'maestria', email: 'diego.paredes@estud.usfq.edu.ec'}),
  (e11:Estudiante {nombre: 'Sebastián Mendoza',   tipo: 'pregrado', email: 'sebastian.mendoza@estud.usfq.edu.ec'}),
  (e12:Estudiante {nombre: 'Isabella Castro',      tipo: 'maestria', email: 'isabella.castro@estud.usfq.edu.ec'}),
  (e13:Estudiante {nombre: 'Mateo Salazar',        tipo: 'pregrado', email: 'mateo.salazar@estud.usfq.edu.ec'}),
  (e14:Estudiante {nombre: 'Luciana Ortiz',        tipo: 'maestria', email: 'luciana.ortiz@estud.usfq.edu.ec'});

// ── TÉCNICOS ───────────────────────────────────
CREATE
  (t1:Tecnico {nombre: 'Alejandro Guaman',    nivel: 'Dev'}),
  (t2:Tecnico {nombre: 'Laura Almagro',         nivel: 'Dev'}),
  (t3:Tecnico {nombre: 'Joshua Reinoso', nivel: 'Dev-Core'}),
  (t4:Tecnico {nombre: 'Galo Pérez',         nivel: 'TI'});

// ── SERVIDORES ─────────────────────────────────
CREATE
  (srv1:Servidor {nombre: 'H200',         tipo: 'GPU',         ip: '10.0.1.10'}),
  (srv2:Servidor {nombre: 'A100',         tipo: 'GPU',         ip: '10.0.1.11'}),
  (srv3:Servidor {nombre: 'Workstation-1', tipo: 'Workstation', ip: '10.0.1.20'}),
  (srv4:Servidor {nombre: 'Workstation-2', tipo: 'Workstation', ip: '10.0.1.21'}),
  (srv5:Servidor {nombre: 'Workstation-3', tipo: 'Workstation', ip: '10.0.1.22'}),
  (srv6:Servidor {nombre: 'DGX',           tipo: 'GPU',         ip: '10.0.1.30'}),
  (srv7:Servidor {nombre: 'DGX-Spark',  tipo: 'Workstation', ip: '10.0.1.40'}),
  (srv8:Servidor {nombre: 'VPS-TI',        tipo: 'VPS',         ip: '10.0.2.10'});

// ── SERVICIOS ──────────────────────────────────
CREATE
  (svc1:Servicio  {nombre: 'VPN',              tipo: 'red',           estado: 'activo'}),
  (svc2:Servicio  {nombre: 'JupyterHub',       tipo: 'computacion',   estado: 'activo'}),
  (svc3:Servicio  {nombre: 'Ollama',           tipo: 'IA',            estado: 'activo'}),
  (svc4:Servicio  {nombre: 'vLLM',            tipo: 'IA',            estado: 'activo'}),
  (svc5:Servicio  {nombre: 'Open WebUI',      tipo: 'interfaz',      estado: 'activo'}),
  (svc6:Servicio  {nombre: 'Prometheus',      tipo: 'monitoreo',     estado: 'activo'}),
  (svc7:Servicio  {nombre: 'Grafana',         tipo: 'monitoreo',     estado: 'activo'}),
  (svc8:Servicio  {nombre: 'N8N',            tipo: 'automatizacion',estado: 'activo'}),
  (svc9:Servicio  {nombre: 'Docker',         tipo: 'computacion',   estado: 'activo'}),
  (svc10:Servicio {nombre: 'NFS (NAS)',      tipo: 'almacenamiento',estado: 'activo'}),
  (svc11:Servicio {nombre: 'PostgreSQL',     tipo: 'base_datos',    estado: 'activo'}),
  (svc12:Servicio {nombre: 'Active Directory',tipo: 'autenticacion', estado: 'activo'}),
  (svc13:Servicio {nombre: 'RAG',            tipo: 'IA',            estado: 'activo'}),
  (svc14:Servicio {nombre: 'Redis',          tipo: 'cache',         estado: 'activo'}),
  (svc15:Servicio {nombre: 'Colab-1',        tipo: 'computacion',   estado: 'activo'}),
  (svc16:Servicio {nombre: 'Colab-2',        tipo: 'computacion',   estado: 'activo'}),
  (svc17:Servicio {nombre: 'Colab-3',        tipo: 'computacion',   estado: 'activo'}),
  (svc18:Servicio {nombre: 'Colab-4',        tipo: 'computacion',   estado: 'activo'});

// ── PROYECTOS ──────────────────────────────────
CREATE
  (p1:Proyecto {nombre: 'Kapak',                           tipo: 'desarrollo'}),
  (p2:Proyecto {nombre: 'Clasificador imágenes médicas',    tipo: 'titulacion'}),
  (p3:Proyecto {nombre: 'Pipeline de datos NLP',           tipo: 'investigacion'}),
  (p4:Proyecto {nombre: 'Bot de atención con LLM',         tipo: 'automatizacion'}),
  (p5:Proyecto {nombre: 'Análisis sentimiento redes sociales', tipo: 'titulacion'}),
  (p6:Proyecto {nombre: 'Cotopaxi',                            tipo: 'desarrollo'}),
  (p7:Proyecto {nombre: 'Kirby Star Rush',                     tipo: 'desarrollo'});

// ── TICKETS ────────────────────────────────────
CREATE
  (tk101:Ticket {id:'TK-101',estado:'cerrado',    prioridad:'alta',   categoria:'acceso',        fecha:'2026-06-15'}),
  (tk102:Ticket {id:'TK-102',estado:'cerrado',    prioridad:'media',  categoria:'rendimiento',   fecha:'2026-06-16'}),
  (tk103:Ticket {id:'TK-103',estado:'cerrado',    prioridad:'baja',   categoria:'consulta',      fecha:'2026-06-17'}),
  (tk104:Ticket {id:'TK-104',estado:'en_progreso',prioridad:'alta',   categoria:'acceso',        fecha:'2026-06-20'}),
  (tk105:Ticket {id:'TK-105',estado:'cerrado',    prioridad:'critica',categoria:'caida',         fecha:'2026-06-22'}),
  (tk106:Ticket {id:'TK-106',estado:'abierto',    prioridad:'media',  categoria:'permisos',      fecha:'2026-06-25'}),
  (tk107:Ticket {id:'TK-107',estado:'cerrado',    prioridad:'baja',   categoria:'consulta',      fecha:'2026-06-26'}),
  (tk108:Ticket {id:'TK-108',estado:'escalado',   prioridad:'critica',categoria:'caida',         fecha:'2026-06-28'}),
  (tk109:Ticket {id:'TK-109',estado:'cerrado',    prioridad:'media',  categoria:'rendimiento',   fecha:'2026-06-30'}),
  (tk110:Ticket {id:'TK-110',estado:'abierto',    prioridad:'alta',   categoria:'acceso',        fecha:'2026-07-01'}),
  (tk111:Ticket {id:'TK-111',estado:'en_progreso',prioridad:'media',  categoria:'configuracion', fecha:'2026-07-02'}),
  (tk112:Ticket {id:'TK-112',estado:'cerrado',    prioridad:'alta',   categoria:'vpn',           fecha:'2026-07-03'}),
  (tk113:Ticket {id:'TK-113',estado:'abierto',    prioridad:'critica',categoria:'caida',         fecha:'2026-07-04'}),
  (tk114:Ticket {id:'TK-114',estado:'en_progreso',prioridad:'media',  categoria:'permisos',      fecha:'2026-07-05'}),
  (tk115:Ticket {id:'TK-115',estado:'cerrado',    prioridad:'baja',   categoria:'consulta',      fecha:'2026-07-05'});

// ── RELACIONES: Servidor ALOJA Servicio ────────
MATCH (srv1:Servidor {nombre:'H200'}),
      (svc2:Servicio {nombre:'JupyterHub'}),
      (svc3:Servicio {nombre:'Ollama'}),
      (svc9:Servicio {nombre:'Docker'}),
      (svc15:Servicio {nombre:'Colab-1'})
CREATE (srv1)-[:ALOJA]->(svc2),
       (srv1)-[:ALOJA]->(svc3),
       (srv1)-[:ALOJA]->(svc9),
       (srv1)-[:ALOJA]->(svc15);

MATCH (srv2:Servidor {nombre:'A100'}),
      (svc4:Servicio {nombre:'vLLM'}),
      (svc6:Servicio {nombre:'Prometheus'}),
      (svc7:Servicio {nombre:'Grafana'}),
      (svc16:Servicio {nombre:'Colab-2'})
CREATE (srv2)-[:ALOJA]->(svc4),
       (srv2)-[:ALOJA]->(svc6),
       (srv2)-[:ALOJA]->(svc7),
       (srv2)-[:ALOJA]->(svc16);

MATCH (srv3:Servidor {nombre:'Workstation-1'}),
      (svc8:Servicio {nombre:'N8N'}),
      (svc18:Servicio {nombre:'Colab-4'})
CREATE (srv3)-[:ALOJA]->(svc8),
       (srv3)-[:ALOJA]->(svc18);

MATCH (srv5:Servidor {nombre:'Workstation-3'}),
      (svc11:Servicio {nombre:'PostgreSQL'})
CREATE (srv5)-[:ALOJA]->(svc11);

MATCH (srv6:Servidor {nombre:'DGX'}),
      (svc2:Servicio {nombre:'JupyterHub'}),
      (svc3:Servicio {nombre:'Ollama'}),
      (svc4:Servicio {nombre:'vLLM'}),
      (svc17:Servicio {nombre:'Colab-3'})
CREATE (srv6)-[:ALOJA]->(svc2),
       (srv6)-[:ALOJA]->(svc3),
       (srv6)-[:ALOJA]->(svc4),
       (srv6)-[:ALOJA]->(svc17);

MATCH (srv7:Servidor {nombre:'DGX-Spark'}),
      (svc5:Servicio {nombre:'Open WebUI'}),
      (svc14:Servicio {nombre:'Redis'})
CREATE (srv7)-[:ALOJA]->(svc5),
       (srv7)-[:ALOJA]->(svc14);

MATCH (srv8:Servidor {nombre:'VPS-TI'}),
      (svc12:Servicio {nombre:'Active Directory'})
CREATE (srv8)-[:ALOJA]->(svc12);

// ── RELACIONES: Servicio DEPENDE_DE Servicio ───
MATCH
  (vpn:Servicio  {nombre:'VPN'}),
  (jup:Servicio  {nombre:'JupyterHub'}),
  (oll:Servicio  {nombre:'Ollama'}),
  (vll:Servicio  {nombre:'vLLM'}),
  (web:Servicio  {nombre:'Open WebUI'}),
  (dok:Servicio  {nombre:'Docker'}),
  (pro:Servicio  {nombre:'Prometheus'}),
  (gra:Servicio  {nombre:'Grafana'}),
  (ad:Servicio   {nombre:'Active Directory'}),
  (rag:Servicio  {nombre:'RAG'}),
  (col1:Servicio {nombre:'Colab-1'}),
  (col2:Servicio {nombre:'Colab-2'}),
  (col3:Servicio {nombre:'Colab-3'}),
  (col4:Servicio {nombre:'Colab-4'})
CREATE
  (jup)-[:DEPENDE_DE]->(vpn),
  (oll)-[:DEPENDE_DE]->(vpn),
  (vll)-[:DEPENDE_DE]->(vpn),
  (dok)-[:DEPENDE_DE]->(vpn),
  (web)-[:DEPENDE_DE]->(oll),
  (gra)-[:DEPENDE_DE]->(pro),
  (vpn)-[:DEPENDE_DE]->(ad),
  (rag)-[:DEPENDE_DE]->(vll),
  (col1)-[:DEPENDE_DE]->(vpn),
  (col2)-[:DEPENDE_DE]->(vpn),
  (col3)-[:DEPENDE_DE]->(vpn),
  (col4)-[:DEPENDE_DE]->(vpn);

// ── RELACIONES: Proyecto USA Servicio ──────────
MATCH
  (p1:Proyecto {nombre:'Kapak'}),
  (p2:Proyecto {nombre:'Clasificador imágenes médicas'}),
  (p3:Proyecto {nombre:'Pipeline de datos NLP'}),
  (p4:Proyecto {nombre:'Bot de atención con LLM'}),
  (p5:Proyecto {nombre:'Análisis sentimiento redes sociales'}),
  (p6:Proyecto {nombre:'Cotopaxi'}),
  (p7:Proyecto {nombre:'Kirby Star Rush'}),
  (vpn:Servicio {nombre:'VPN'}),
  (oll:Servicio {nombre:'Ollama'}),
  (dok:Servicio {nombre:'Docker'}),
  (vll:Servicio {nombre:'vLLM'}),
  (n8n:Servicio {nombre:'N8N'}),
  (pg:Servicio  {nombre:'PostgreSQL'})
CREATE
  (p1)-[:USA]->(vpn), (p1)-[:USA]->(oll), (p1)-[:USA]->(dok), (p1)-[:USA]->(pg),
  (p2)-[:USA]->(vpn), (p2)-[:USA]->(dok),
  (p3)-[:USA]->(vpn), (p3)-[:USA]->(vll), (p3)-[:USA]->(dok),
  (p4)-[:USA]->(vpn), (p4)-[:USA]->(n8n), (p4)-[:USA]->(vll),
  (p5)-[:USA]->(vpn), (p5)-[:USA]->(dok), (p5)-[:USA]->(pg),
  (p6)-[:USA]->(vpn), (p6)-[:USA]->(pg),
  (p7)-[:USA]->(vpn), (p7)-[:USA]->(oll);

// ── RELACIONES: Proyecto CORRE_EN Servidor ─────
MATCH (p6:Proyecto {nombre:'Cotopaxi'}),      (srv_h200:Servidor {nombre:'H200'})
MATCH (p7:Proyecto {nombre:'Kirby Star Rush'}), (srv_dgx:Servidor {nombre:'DGX'})
CREATE (p6)-[:CORRE_EN]->(srv_h200),
       (p7)-[:CORRE_EN]->(srv_dgx);

// ── RELACIONES: Estudiante TRABAJA_EN Proyecto ─
MATCH
  (e1:Estudiante {nombre:'Ana García'}),
  (e2:Estudiante {nombre:'Luis Morales'}),
  (e3:Estudiante {nombre:'María Torres'}),
  (e4:Estudiante {nombre:'Carlos Ruiz'}),
  (e5:Estudiante {nombre:'Sofía López'}),
  (e6:Estudiante {nombre:'Pedro Sánchez'}),
  (e7:Estudiante {nombre:'Maria Emilia Granda'}),
  (e8:Estudiante {nombre:'Andrés Herrera'}),
  (e9:Estudiante {nombre:'Camila Vega'}),
  (e10:Estudiante {nombre:'Diego Paredes'}),
  (p1:Proyecto {nombre:'Kapak'}),
  (p2:Proyecto {nombre:'Clasificador imágenes médicas'}),
  (p3:Proyecto {nombre:'Pipeline de datos NLP'}),
  (p4:Proyecto {nombre:'Bot de atención con LLM'}),
  (p5:Proyecto {nombre:'Análisis sentimiento redes sociales'}),
  (p6:Proyecto {nombre:'Cotopaxi'}),
  (p7:Proyecto {nombre:'Kirby Star Rush'})
CREATE
  (e1)-[:TRABAJA_EN]->(p2), (e2)-[:TRABAJA_EN]->(p3),
  (e3)-[:TRABAJA_EN]->(p1), (e4)-[:TRABAJA_EN]->(p3),
  (e5)-[:TRABAJA_EN]->(p5), (e6)-[:TRABAJA_EN]->(p4),
  (e7)-[:TRABAJA_EN]->(p1), (e8)-[:TRABAJA_EN]->(p3),
  (e9)-[:TRABAJA_EN]->(p2), (e10)-[:TRABAJA_EN]->(p4),
  (e3)-[:TRABAJA_EN]->(p6), (e8)-[:TRABAJA_EN]->(p7);

// ── RELACIONES: Estudiante UTILIZA Colab ─────────
MATCH
  (e11:Estudiante {nombre:'Sebastián Mendoza'}),
  (e12:Estudiante {nombre:'Isabella Castro'}),
  (e13:Estudiante {nombre:'Mateo Salazar'}),
  (e14:Estudiante {nombre:'Luciana Ortiz'}),
  (col1:Servicio {nombre:'Colab-1'}),
  (col2:Servicio {nombre:'Colab-2'}),
  (col3:Servicio {nombre:'Colab-3'}),
  (col4:Servicio {nombre:'Colab-4'})
CREATE
  (e11)-[:UTILIZA]->(col1),
  (e12)-[:UTILIZA]->(col2),
  (e13)-[:UTILIZA]->(col3),
  (e14)-[:UTILIZA]->(col4);

// ── RELACIONES: Estudiante SUPERVISADO_POR Coord ─
MATCH
  (c1:Coordinador {nombre:'Daniel Riofrío'}),
  (c2:Coordinador {nombre:'Felipe Grijalva'}),
  (e1:Estudiante {nombre:'Ana García'}),
  (e2:Estudiante {nombre:'Luis Morales'}),
  (e3:Estudiante {nombre:'María Torres'}),
  (e4:Estudiante {nombre:'Carlos Ruiz'}),
  (e5:Estudiante {nombre:'Sofía López'}),
  (e6:Estudiante {nombre:'Pedro Sánchez'}),
  (e7:Estudiante {nombre:'Maria Emilia Granda'}),
  (e8:Estudiante {nombre:'Andrés Herrera'}),
  (e9:Estudiante {nombre:'Camila Vega'}),
  (e10:Estudiante {nombre:'Diego Paredes'}),
  (e11:Estudiante {nombre:'Sebastián Mendoza'}),
  (e12:Estudiante {nombre:'Isabella Castro'}),
  (e13:Estudiante {nombre:'Mateo Salazar'}),
  (e14:Estudiante {nombre:'Luciana Ortiz'})
CREATE
  (e1)-[:SUPERVISADO_POR]->(c1), (e2)-[:SUPERVISADO_POR]->(c2),
  (e3)-[:SUPERVISADO_POR]->(c1), (e4)-[:SUPERVISADO_POR]->(c2),
  (e5)-[:SUPERVISADO_POR]->(c1), (e6)-[:SUPERVISADO_POR]->(c2),
  (e7)-[:SUPERVISADO_POR]->(c1), (e8)-[:SUPERVISADO_POR]->(c2),
  (e9)-[:SUPERVISADO_POR]->(c1), (e10)-[:SUPERVISADO_POR]->(c2),
  (e11)-[:SUPERVISADO_POR]->(c1), (e12)-[:SUPERVISADO_POR]->(c2),
  (e13)-[:SUPERVISADO_POR]->(c1), (e14)-[:SUPERVISADO_POR]->(c2);

// ── RELACIONES: Estudiante REPORTÓ Ticket ──────
MATCH
  (e1:Estudiante {nombre:'Ana García'}),
  (e2:Estudiante {nombre:'Luis Morales'}),
  (e3:Estudiante {nombre:'María Torres'}),
  (e4:Estudiante {nombre:'Carlos Ruiz'}),
  (e5:Estudiante {nombre:'Sofía López'}),
  (e6:Estudiante {nombre:'Pedro Sánchez'}),
  (e7:Estudiante {nombre:'Maria Emilia Granda'}),
  (e8:Estudiante {nombre:'Andrés Herrera'}),
  (e9:Estudiante {nombre:'Camila Vega'}),
  (e10:Estudiante {nombre:'Diego Paredes'})
MATCH
  (tk101:Ticket {id:'TK-101'}),(tk102:Ticket {id:'TK-102'}),
  (tk103:Ticket {id:'TK-103'}),(tk104:Ticket {id:'TK-104'}),
  (tk105:Ticket {id:'TK-105'}),(tk106:Ticket {id:'TK-106'}),
  (tk107:Ticket {id:'TK-107'}),(tk108:Ticket {id:'TK-108'}),
  (tk109:Ticket {id:'TK-109'}),(tk110:Ticket {id:'TK-110'}),
  (tk111:Ticket {id:'TK-111'}),(tk112:Ticket {id:'TK-112'}),
  (tk113:Ticket {id:'TK-113'}),(tk114:Ticket {id:'TK-114'}),
  (tk115:Ticket {id:'TK-115'})
CREATE
  (e1)-[:REPORTÓ {fecha:'2026-06-15'}]->(tk101),
  (e2)-[:REPORTÓ {fecha:'2026-06-16'}]->(tk102),
  (e3)-[:REPORTÓ {fecha:'2026-06-17'}]->(tk103),
  (e4)-[:REPORTÓ {fecha:'2026-06-20'}]->(tk104),
  (e5)-[:REPORTÓ {fecha:'2026-06-22'}]->(tk105),
  (e6)-[:REPORTÓ {fecha:'2026-06-25'}]->(tk106),
  (e7)-[:REPORTÓ {fecha:'2026-06-26'}]->(tk107),
  (e1)-[:REPORTÓ {fecha:'2026-06-28'}]->(tk108),
  (e8)-[:REPORTÓ {fecha:'2026-06-30'}]->(tk109),
  (e9)-[:REPORTÓ {fecha:'2026-07-01'}]->(tk110),
  (e10)-[:REPORTÓ {fecha:'2026-07-02'}]->(tk111),
  (e2)-[:REPORTÓ {fecha:'2026-07-03'}]->(tk112),
  (e3)-[:REPORTÓ {fecha:'2026-07-04'}]->(tk113),
  (e5)-[:REPORTÓ {fecha:'2026-07-05'}]->(tk114),
  (e6)-[:REPORTÓ {fecha:'2026-07-05'}]->(tk115);

// ── RELACIONES: Ticket AFECTA Servicio ─────────
MATCH
  (tk101:Ticket {id:'TK-101'}),(tk102:Ticket {id:'TK-102'}),
  (tk103:Ticket {id:'TK-103'}),(tk104:Ticket {id:'TK-104'}),
  (tk105:Ticket {id:'TK-105'}),(tk106:Ticket {id:'TK-106'}),
  (tk107:Ticket {id:'TK-107'}),(tk108:Ticket {id:'TK-108'}),
  (tk109:Ticket {id:'TK-109'}),(tk110:Ticket {id:'TK-110'}),
  (tk111:Ticket {id:'TK-111'}),(tk112:Ticket {id:'TK-112'}),
  (tk113:Ticket {id:'TK-113'}),(tk114:Ticket {id:'TK-114'}),
  (tk115:Ticket {id:'TK-115'})
MATCH
  (vpn:Servicio {nombre:'VPN'}),
  (oll:Servicio {nombre:'Ollama'}),
  (jup:Servicio {nombre:'JupyterHub'}),
  (dok:Servicio {nombre:'Docker'}),
  (web:Servicio {nombre:'Open WebUI'}),
  (nfs:Servicio {nombre:'NFS (NAS)'}),
  (vll:Servicio {nombre:'vLLM'}),
  (n8n:Servicio {nombre:'N8N'})
CREATE
  (tk101)-[:AFECTA]->(vpn),
  (tk102)-[:AFECTA]->(oll),
  (tk103)-[:AFECTA]->(jup),
  (tk104)-[:AFECTA]->(vpn), (tk104)-[:AFECTA]->(dok),
  (tk105)-[:AFECTA]->(vpn),
  (tk106)-[:AFECTA]->(dok),
  (tk107)-[:AFECTA]->(web),
  (tk108)-[:AFECTA]->(nfs),
  (tk109)-[:AFECTA]->(vll),
  (tk110)-[:AFECTA]->(vpn),
  (tk111)-[:AFECTA]->(n8n),
  (tk112)-[:AFECTA]->(vpn),
  (tk113)-[:AFECTA]->(nfs),
  (tk114)-[:AFECTA]->(dok),
  (tk115)-[:AFECTA]->(jup);

// ── RELACIONES: Ticket ASIGNADO_A Tecnico ──────
MATCH
  (t1:Tecnico {nombre:'Alejandro Guaman'}),
  (t2:Tecnico {nombre:'Laura Almagro'}),
  (t3:Tecnico {nombre:'Joshua Reinoso'}),
  (t4:Tecnico {nombre:'Galo Pérez'})
MATCH
  (tk101:Ticket {id:'TK-101'}),(tk102:Ticket {id:'TK-102'}),
  (tk104:Ticket {id:'TK-104'}),(tk105:Ticket {id:'TK-105'}),
  (tk107:Ticket {id:'TK-107'}),(tk108:Ticket {id:'TK-108'}),
  (tk109:Ticket {id:'TK-109'}),(tk111:Ticket {id:'TK-111'}),
  (tk112:Ticket {id:'TK-112'}),(tk114:Ticket {id:'TK-114'}),
  (tk115:Ticket {id:'TK-115'})
CREATE
  (tk101)-[:ASIGNADO_A {fecha_asignacion:'2026-06-15'}]->(t1),
  (tk102)-[:ASIGNADO_A {fecha_asignacion:'2026-06-16'}]->(t2),
  (tk104)-[:ASIGNADO_A {fecha_asignacion:'2026-06-20'}]->(t2),
  (tk105)-[:ASIGNADO_A {fecha_asignacion:'2026-06-22'}]->(t1),
  (tk107)-[:ASIGNADO_A {fecha_asignacion:'2026-06-26'}]->(t2),
  (tk108)-[:ASIGNADO_A {fecha_asignacion:'2026-06-28'}]->(t1),
  (tk109)-[:ASIGNADO_A {fecha_asignacion:'2026-06-30'}]->(t3),
  (tk111)-[:ASIGNADO_A {fecha_asignacion:'2026-07-02'}]->(t2),
  (tk112)-[:ASIGNADO_A {fecha_asignacion:'2026-07-03'}]->(t4),
  (tk114)-[:ASIGNADO_A {fecha_asignacion:'2026-07-05'}]->(t1),
  (tk115)-[:ASIGNADO_A {fecha_asignacion:'2026-07-05'}]->(t2);

// ── RELACIONES: Tecnico RESUELVE Ticket ────────
MATCH
  (t1:Tecnico {nombre:'Alejandro Guaman'}),
  (t2:Tecnico {nombre:'Laura Almagro'}),
  (t3:Tecnico {nombre:'Joshua Reinoso'}),
  (t4:Tecnico {nombre:'Galo Pérez'})
MATCH
  (tk101:Ticket {id:'TK-101'}),(tk102:Ticket {id:'TK-102'}),
  (tk103:Ticket {id:'TK-103'}),(tk105:Ticket {id:'TK-105'}),
  (tk107:Ticket {id:'TK-107'}),(tk109:Ticket {id:'TK-109'}),
  (tk112:Ticket {id:'TK-112'}),(tk115:Ticket {id:'TK-115'})
CREATE
  (t1)-[:RESUELVE {fecha_resolucion:'2026-06-15'}]->(tk101),
  (t2)-[:RESUELVE {fecha_resolucion:'2026-06-17'}]->(tk102),
  (t1)-[:RESUELVE {fecha_resolucion:'2026-06-18'}]->(tk103),
  (t3)-[:RESUELVE {fecha_resolucion:'2026-06-23'}]->(tk105),
  (t2)-[:RESUELVE {fecha_resolucion:'2026-06-27'}]->(tk107),
  (t3)-[:RESUELVE {fecha_resolucion:'2026-07-01'}]->(tk109),
  (t4)-[:RESUELVE {fecha_resolucion:'2026-07-04'}]->(tk112),
  (t2)-[:RESUELVE {fecha_resolucion:'2026-07-06'}]->(tk115);

// ── RELACIONES: Tecnico ESCALADO_A Tecnico ─────
MATCH
  (t1:Tecnico {nombre:'Alejandro Guaman'}),
  (t3:Tecnico {nombre:'Joshua Reinoso'})
CREATE
  (t1)-[:ESCALADO_A {motivo:'Falla crítica requiere Dev-Core', fecha:'2026-06-22'}]->(t3);

// ── Verificación final ──────────────────────────
MATCH (n) RETURN labels(n)[0] AS tipo, count(n) AS total
ORDER BY total DESC;
