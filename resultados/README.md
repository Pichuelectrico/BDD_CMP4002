# Resultados y Evidencias

- Neo4j Browser (`http://localhost:7474`) con visualización del grafo
- Neo4j Desktop con las consultas OP-1 a OP-6 ejecutadas

### Grafico del grafo cargado en Neo4j Browser

![alt text](image.png)

### Evidencias de la Operación 1

Contar nodos por etiqueta

![alt text](image-1.png)

Contar relaciones por tipo

![alt text](image-2.png)

### Evidencias de la Operación 2

Mapa de dependencias de servicios

![alt text](image-3.png)

Cuál es el servicio más crítico?

![alt text](image-4.png)

### Evidencias de la Operación 3

Tickets abiertos - estudiante, servicio y técnico

![alt text](image-5.png)

### Evidencias de la Operación 4

Actualización de un cierre de ticket

Antes de la actualización

![alt text](image-6.png)

Después de la actualización

![alt text](image-7.png)

### Evidencias de la Operación 5

Análisis de impacto en cascada del servidor H200

Qué servicios aloja H200?

![alt text](image-8.png)

![alt](image-9.png)

Qué otros servicios dependen de los caídos? (profundidad 1-3)

![alt text](image-10.png)

Qué proyectos usan esos servicios caídos?

![alt text](image-11.png)

Qué estudiantes trabajan en esos proyectos y tienen tickets activos?

![alt text](image-12.png)

(MEGA-QUERY): Todo en una sola consulta de 5 saltos

![alt text](image-13.png)

### Evidencias de la Operación 6

Estadísticas de resolución por técnico

![alt text](image-14.png)

Técnicos con mayor carga de tickets activos asignados

![alt text](image-15.png)
