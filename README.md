# 🤖 Bot de Monitoreo de Ventas para WhatsApp

Este proyecto consiste en un bot automatizado diseñado para monitorear grupos de WhatsApp (específicamente clasificados del barrio) y enviarme notificaciones personales cuando se detecten palabras clave relacionadas con mi negocio local y librerías.

## 🚀 Objetivo del Proyecto
El bot "escucha" los mensajes de los grupos y, mediante lógica de filtrado, me avisa al privado si alguien pregunta por:
- **Productos de mi negocio:** Stock, precios o disponibilidad.
- **Librería:** Consultas sobre artículos específicos de librería.

## 🛠️ Tecnologías y Herramientas
- **n8n (Self-hosted):** Orquestador de la automatización (vía Docker).
- **Evolution API:** Para la integración técnica con WhatsApp.
- **Docker:** Para el despliegue del entorno.

## 📚 Ruta de Aprendizaje
Actualmente estoy aprendiendo a usar **n8n** y automatización de flujos. Los recursos que estoy utilizando son:
1. [Curso de n8n desde CERO (2026)](https://www.youtube.com/watch?v=6CdgFR0VsVI) - Conceptos básicos y nodos.
2. [Documentación oficial de n8n](https://docs.n8n.io/) - Para lógica avanzada.
3. [Guía de Evolution API](https://evolution-api.com/) - Para la conexión con WhatsApp.

## 📋 Próximos Pasos
- [ ] Configurar el contenedor de Docker con n8n.
- [ ] Conectar la Evolution API con mi cuenta de WhatsApp.
- [ ] Crear el flujo de filtrado por palabras clave en n8n.
- [ ] Configurar las notificaciones automáticas al número personal.