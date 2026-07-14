# Proyecto Final — Neo4j · Ruta 4 Grafo

## Sistema de Gestión de Incidencias — Infraestructura IA Universitaria

**Todos los datos son ficticios.**

## Requisitos

- Docker Desktop instalado y corriendo
- (Opcional) Neo4j Desktop para visualización

## Pasos de ejecución (desde cero)

```bash
# 1. Ir a la carpeta del proyecto
cd BDD_CMP4002

# 2. Levantar Neo4j
docker compose up -d

# 3. Esperar ~30 segundos y verificar
docker compose ps
docker exec -it proyecto_neo4j neo4j status

# 4. Cargar los datos
docker exec -it proyecto_neo4j cypher-shell \
  -u neo4j -p neo4j123 \
  --file /var/lib/neo4j/import/init.cypher

# 5. Abrir Neo4j Browser
# → http://localhost:7474
# → Usuario: neo4j | Contraseña: neo4j123

# 6. (Opcional) Conectar Neo4j Desktop
# → Remote connection → neo4j://localhost:7687
# → Usuario: neo4j | Contraseña: neo4j123
```

## Operaciones

Ver archivo `neo4j/consultas.cypher`. Ejecutar en orden OP-1 a OP-6.

## Salida esperada

- OP-1: 68 nodos (15 Tickets, 14 Estudiantes, 18 Servicios, 8 Servidores…)
- OP-5 (central): camino de 5 saltos Servidor→Servicio→Proyecto→Estudiante→Ticket

## Estructura

```
BDD_CMP4002/
├── docker-compose.yml
├── neo4j/
│   ├── init.cypher         # Carga de datos
│   └── consultas.cypher    # 6 operaciones
├── modelo/grafo-modelo.md
├── datos/README.md
├── resultados/             # Capturas de salidas
└── README.md
```
