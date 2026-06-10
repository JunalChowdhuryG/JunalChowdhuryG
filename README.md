# Junal Chowdhury Gomez

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=flat&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/junal-chowdhury-g/)
[![Gmail](https://img.shields.io/badge/Gmail-EA4335?style=flat&logo=gmail&logoColor=white)](mailto:chowdhurygomezjunaljohir@gmail.com)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white)](https://github.com/JunalChowdhuryG)
[![Alura](https://custom-icon-badges.demolab.com/badge/Alura-001332?logo=alura-white&logoColor=fff)](https://app.aluracursos.com/user/chowdhurygomezjunaljohir)
[![Microsoft](https://img.shields.io/badge/Microsoft-1e2c4d?style=flat&logo=microsoft&logoColor=white)](https://learn.microsoft.com/es-es/users/junalchowdhuryg/)

---

Estudiante de Ciencias de la Computacion en la **Universidad Nacional de Ingenieria, Peru**.
Me especializo en **ingenieria de software**, **arquitectura de sistemas distribuidos** y **DataOps**.
Construyo proyectos que van mas alla del tutorial: sistemas con algoritmos reales, resiliencia
ante fallos y observabilidad production-grade.

---

## Proyectos de portafolio

### ChronosStream — Motor de Deduplicacion e Idempotencia en Tiempo Real

> Middleware para detectar y filtrar duplicados en sistemas distribuidos basados en eventos
> (Kafka / RabbitMQ) con overhead menor a 1ms y semantica exactly-once.

**Lo que resuelve:** En cualquier sistema distribuido la entrega garantizada implica duplicados.
Implementar idempotencia de forma naive destruye la latencia. ChronosStream resuelve esto con
una arquitectura de dos barreras: Bloom Filter probabilistico + Double-Check atomico en Redis.

**Ingenieria destacada:**
- Bloom Filter escalable en Redis BitField — O(k), ~17MB para 10 millones de IDs
- Lua scripts atomicos en Redis — correctitud bajo concurrencia sin locks distribuidos
- Sliding Windows con FSM de 6 estados y limpieza asincrona con virtual threads
- Circuit breaker (Resilience4j) + modo degradado + reconciliacion post-falla
- 11 metricas Prometheus + dashboard Grafana + logging estructurado JSON
- Chaos tests: tormenta de duplicados (P1), clock skew (P2), saturacion del filtro (P3),
  caida de Redis (P4), competing producers (P5)

**Stack:** Java 21 · Spring Boot 3 · Redis 7 · Kafka · RabbitMQ · Docker · Prometheus · Grafana

[![Repositorio](https://img.shields.io/badge/Ver%20repositorio-181717?style=flat&logo=github&logoColor=white)](https://github.com/JunalChowdhuryG/Chronos-Stream)

---

### DBMigrator — Motor de Migracion SQL Server → PostgreSQL

> Motor de migracion de base de datos con descubrimiento automatico de esquema,
> grafo de dependencias y maquina de estados con checkpointing.

**Lo que resuelve:** Migrar bases de datos relacionales complejas sin downtime, manejando
dependencias circulares, datos huerfanos, incompatibilidades de tipos y triggers no portables.

**Ingenieria destacada:**
- Discovery automatico del esquema con query de introspección SQL Server
- Algoritmo de Kahn para ordenamiento topologico del grafo de dependencias
- Deteccion y resolucion de ciclos en el grafo
- FSM con checkpointing — reanuda la migracion desde el punto de falla
- Verificacion de integridad post-migracion con checksums configurables
- 6 problemas plantados intencionalmente (ciclos, datos huerfanos, tipos incompatibles)
- Testing con Testcontainers: unit, integration y chaos tests

**Stack:** Java · Spring Boot · SQL Server · PostgreSQL · Docker · Testcontainers

[![Repositorio](https://img.shields.io/badge/Ver%20repositorio-181717?style=flat&logo=github&logoColor=white)](https://github.com/JunalChowdhuryG/dbmigrator)

---

## Tecnologias

**Lenguajes**

![Java](https://img.shields.io/badge/Java-%23ED8B00.svg?logo=openjdk&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-4479A1?style=flat&logo=postgresql&logoColor=white)
![Bash](https://img.shields.io/badge/Bash-4EAA25?style=flat&logo=gnu-bash&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=flat&logo=javascript&logoColor=black)

**Frameworks y herramientas**

![Spring Boot](https://img.shields.io/badge/Spring%20Boot-6DB33F?style=flat&logo=spring-boot&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat&logo=docker&logoColor=white)
![Maven](https://img.shields.io/badge/Maven-C71A36?style=flat&logo=apache-maven&logoColor=white)
![Redis](https://img.shields.io/badge/Redis-DC382D?style=flat&logo=redis&logoColor=white)
![Kafka](https://img.shields.io/badge/Kafka-231F20?style=flat&logo=apache-kafka&logoColor=white)
![RabbitMQ](https://img.shields.io/badge/RabbitMQ-FF6600?style=flat&logo=rabbitmq&logoColor=white)
![Prometheus](https://img.shields.io/badge/Prometheus-E6522C?style=flat&logo=prometheus&logoColor=white)
![Grafana](https://img.shields.io/badge/Grafana-F46800?style=flat&logo=grafana&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-2088FF?style=flat&logo=github-actions&logoColor=white)
![Git](https://img.shields.io/badge/Git-F05032?style=flat&logo=git&logoColor=white)

**Bases de datos**

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=flat&logo=postgresql&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat&logo=mysql&logoColor=white)
![MongoDB](https://img.shields.io/badge/MongoDB-47A248?style=flat&logo=mongodb&logoColor=white)
![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=flat&logo=microsoft-sql-server&logoColor=white)

**Patrones y arquitecturas**

![Microservicios](https://img.shields.io/badge/Microservicios-333?style=flat)
![Sistemas distribuidos](https://img.shields.io/badge/Sistemas%20distribuidos-333?style=flat)
![DataOps](https://img.shields.io/badge/DataOps-333?style=flat)
![DDD](https://img.shields.io/badge/DDD-333?style=flat)

---

## Educacion y certificaciones

**Universidad Nacional de Ingenieria, Lima Peru**
Ciencias de la Computacion (en curso)

**Oracle Next Education (ONE) G7 — Alura + Oracle**
Java · Spring Boot · SQL · Oracle Cloud Infrastructure
[Ver certificado](https://app.aluracursos.com/program/certificate/9824475c-66b1-40d3-bddd-3ca67990e750)

---

## Estadisticas

| ![Stats](https://github-readme-stats.vercel.app/api?username=JunalChowdhuryG&show_icons=true&theme=tokyonight&hide_border=true) | ![Streak](https://github-readme-streak-stats.herokuapp.com/?user=JunalChowdhuryG&theme=tokyonight&hide_border=true) |
| --- | --- |
| ![Langs](https://github-readme-stats-eight-theta.vercel.app/api/top-langs/?username=JunalChowdhuryG&layout=compact&langs_count=8&theme=tokyonight&hide_border=true) |  |
