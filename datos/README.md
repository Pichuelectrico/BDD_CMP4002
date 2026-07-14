# Datos Ficticios del Proyecto

Todos los datos en `neo4j/init.cypher` son **ficticios** y representan una infraestructura de IA universitaria.

## Resumen

| Entidad         | Cantidad             |
| --------------- | -------------------- |
| Tickets         | 15 (TK-101 a TK-115) |
| Estudiantes     | 10                   |
| Servicios       | 14                   |
| Servidores      | 7                    |
| Proyectos       | 5                    |
| Técnicos        | 4                    |
| Coordinadores   | 2                    |
| **Total nodos** | **57**               |

## Servidores

- **GPU:** H200, A100, DGX
- **Workstation:** Workstation-1, Workstation-2, Workstation-3, DGX-Spark

## Servicios clave

VPN, JupyterHub, Ollama, vLLM, Docker, Active Directory, PostgreSQL, N8N, Prometheus, Grafana, Open WebUI, Redis, NFS (NAS), RAG

## Proyectos

1. Kapak (desarrollo)
2. Clasificador imágenes médicas (titulación)
3. Pipeline de datos NLP (investigación)
4. Bot de atención con LLM (automatización)
5. Análisis sentimiento redes sociales (titulación)

## Escenario de impacto

El servidor **H200** aloja JupyterHub, Ollama y Docker. Si cae, los proyectos que usan esos servicios quedan bloqueados y los estudiantes afectados pueden tener tickets activos reportados.
