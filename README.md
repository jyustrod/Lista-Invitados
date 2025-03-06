# 🎉 Lista de Invitados

Una **aplicación web** para gestionar la lista de invitados a eventos como **conferencias, bodas o seminarios**.  
📌 Proyecto desarrollado en **Java, JSP y Maven** como parte del curso de **Desarrollo de Aplicaciones Web**.

---

## 📋 Descripción

✅ **CRUD de invitados**: Alta, baja y consulta.  
🖥️ **Vistas JSP**: Interfaz sencilla y funcional.  
🚀 **Proyecto Maven**: Estructura estándar y modular.  
🌍 **Despliegue gratuito**: Usando `webapp-runner` en plataformas como Render.

---

## 🚀 Características

⚡ **Rápido y sencillo**: Gestión eficiente de invitados.  
🛠️ **Código limpio**: Implementa el patrón **MVC** (Controller, Service, DAO).  
🔄 **Despliegue automático**: Integración con **GitHub** y plataformas gratuitas.

---
## 📁 Estructura del Proyecto
```
Lista-Invitados/
├── src/main/java
│   └── aplicacion/
│       ├── controller/InvitadoController.java
│       ├── dao/{ConexionBD.java, InvitadoDAO.java}
│       ├── model/Invitado.java
│       └── service/InvitadoService.java
└── src/main/webapp
└── views/{lista.jsp, agregar.jsp, eliminar.jsp}
```

---
## ⚙️ Configuración

- **Base de datos:** Configura `ConexionBD.java` con tus parámetros (URL, usuario y contraseña).
- **Despliegue:** Compila y ejecuta el proyecto con Maven y Tomcat:

  ```bash
  mvn clean package tomcat7:run

Este comando **compila** el proyecto y **lo ejecuta** directamente en un servidor Tomcat embebido, sin necesidad de empaquetarlo como WAR manualmente. 🚀

---
## 💻 Tecnologías

- **Java** ☕
- **JSP** 🖥️
- **Maven** 🛠️
- **SQL Server/MySQL** (ajusta según tu servicio de base de datos) 🗄️

---

## 🤝 Contribuidores

👤 [@pabloloz23](https://github.com/pabloloz23)  
👤 [@jyustrod](https://github.com/jyustrod)  
👤 [@AllerSec](https://github.com/AllerSec)

---
## 📄 Licencia
Distribuido bajo la Licencia Apache-2.0.