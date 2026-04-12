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
- **JavaScript (Node.js):** Para la lógica personalizada dentro de los nodos de n8n.
- **PostgreSQL:** Base de datos para el funcionamiento interno de Evolution API.

## ⚙️ Cómo Funciona el Bot (Arquitectura y Flujo)
El sistema funciona utilizando contenedores Docker que comunican a **Evolution API** con **n8n**. El comportamiento exacto del flujo es el siguiente:

1. **Recepción (Webhook):** Evolution API está conectada a la cuenta de WhatsApp, escucha los mensajes entrantes de los grupos y los envía a n8n automáticamente.
2. **Restricción de Horario:** n8n verifica la hora actual del servidor. El bot procesa mensajes en dos franjas: **mañana (08:30 a 11:00 hs) y tarde/noche (a partir de las 18:20 hs)**, deteniendo el flujo fuera de ese rango para evitar notificaciones molestas.
3. **Filtrado por Palabras Clave:** Si el mensaje ingresa en el horario permitido, un nodo condicional analiza el texto buscando términos específicos de interés (ej. "precio", "stock", "librería").
4. **Alerta al Privado:** Si hay coincidencias, n8n hace una petición (vía *HTTP Request*) a Evolution API para reenviarme ese mensaje como una alerta directa a mi número de WhatsApp personal.
5. **Mensajes Programados:** Como función adicional, n8n corre un flujo independiente utilizando un *Schedule Trigger* que envía mensajes automáticos a mi mamá en horarios predefinidos todos los días.

## 📚 Ruta de Aprendizaje
Actualmente estoy aprendiendo a usar **n8n** y automatización de flujos. Los recursos que estoy utilizando son:
1. [Curso de n8n desde CERO (2026)](https://www.youtube.com/watch?v=6CdgFR0VsVI) - Conceptos básicos y nodos.
2. [Documentación oficial de n8n](https://docs.n8n.io/) - Para lógica avanzada.
3. [Guía de Evolution API](https://evolution-api.com/) - Para la conexión con WhatsApp.

## 💡 Aprendizajes Clave
- **Manejo de Zonas Horarias:** Uso de JavaScript (`America/Argentina/Buenos_Aires`) dentro de n8n para controlar las franjas horarias exactas de envío de mensajes.
- **Gestión de Contenedores:** Configuración y comunicación de múltiples servicios (Evolution API, n8n, PostgreSQL, Redis) utilizando Docker Compose.

## 📋 Próximos Pasos
- [x] Configurar el contenedor de Docker con n8n.
- [x] Conectar la Evolution API con mi cuenta de WhatsApp.
- [x] Crear el flujo de filtrado por palabras clave en n8n.
- [x] Configurar las notificaciones automáticas al número personal.
- [x] Configurar el envío de mensajes a mi mamá en ciertos horarios.
- [x] Configurar que el bot solo funcione en los rangos horarios definidos (08:30 a 11:00 y después de las 18:20).
- [ ] Hacer que el bot deje de funcionar a las 23:00 hs.