# TechMaster LTDA - Node App Client 🚀

Este repositorio contiene la lógica de negocio de una aplicación Node.js integrada con una arquitectura de CI/CD desacoplada y de alto rendimiento.

## 🏗️ Arquitectura de la Solución
El proyecto utiliza un modelo de **Gobernanza Centralizada**, donde la lógica de los pipelines es consumida desde un repositorio de plantillas externas (`central-templates`). Esto permite:
* Reducción de deuda técnica en el repositorio cliente.
* Estandarización de procesos de construcción y seguridad.

## 🔄 Flujos de Trabajo (CI/CD)
El ciclo de vida del software está segmentado en dos flujos principales para optimizar recursos:

1. **Validación (CI):** Se activa en ramas `feature/*`. [cite_start]Realiza instalación limpia (`npm ci`), pruebas unitarias y construcción de imagen Docker sin publicación.
2. **Lanzamiento (CD):** Activado exclusivamente por **Git Tags** (`v*`). Es el único flujo que realiza el despliegue oficial hacia Docker Hub.

## 🛠️ Decisiones Técnicas
* **Optimización:** Uso de caché avanzada para capas de Docker y dependencias de Node.js.
* **Seguridad:** Gestión de credenciales mediante GitHub Secrets y Access Tokens
* **Branching:** Estrategia basada en Feature Branches con exclusión de ejecuciones en la rama `main`

---
*Proyecto desarrollado para la Evaluación 1 de Ciclo de Vida de Software - Duoc UC.* 
