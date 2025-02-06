# 🤖 Instrucciones para Revisar el Código

El código del proyecto está comprimido en un archivo `.zip`. Para revisar y ejecutar el código, sigue estos pasos:

## 🔹 1. Descargar y Extraer el Proyecto
1. Descarga el archivo `prueba-tecnica-logistica.zip` desde GitHub.
2. Descomprime el archivo:
   - **Windows:** Clic derecho sobre el archivo → `Extraer aquí`.
   - **Mac/Linux:** Usa el comando `tar -xvf prueba-tecnica-logistica.zip` o `unzip prueba-tecnica-logistica.zip`.

## 🔹 2. Abrir el Proyecto en IntelliJ IDEA o VS Code
1. Abre IntelliJ IDEA o Visual Studio Code.
2. Ve a `File` → `Open` y selecciona la carpeta descomprimida del proyecto.
3. Espera a que carguen las dependencias de Maven.

## 🔹 3. Configurar la Base de Datos en MySQL
1. Abre MySQL Workbench y ejecuta el siguiente comando para crear la base de datos:
   ```sql
   CREATE DATABASE logistica;


# 🚛 Proyecto de Gestión Logística

Este proyecto es una API REST para la gestión de envíos logísticos terrestres y marítimos.  
Se desarrolló con **Spring Boot, MySQL y JPA** para la persistencia de datos.

---

## 🤖 Tecnologías Utilizadas
- **Java 17**
- **Spring Boot 3.4.2**
- **MySQL**
- **JPA (Hibernate)**
- **Maven**

---

## 🤖 Configuración del Proyecto

### 🔹 1. Crear la Base de Datos en MySQL
Ejecuta estos comandos en MySQL:
```sql
CREATE DATABASE logistica;

```

## 🤖 EndPoints de la API

GET	/clientes	Listar todos los clientes
POST	/clientes	Crear un cliente
PUT	/clientes/{id}	Actualizar un cliente
DELETE	/clientes/{id}	Eliminar un cliente

🔹 Envíos Terrestres:
Método	Endpoint	Descripción
GET	/envios-terrestres	Listar envíos terrestres
POST	/envios-terrestres	Crear un envío terrestre

🔹 Envíos Marítimos:
Método	Endpoint	Descripción
GET	/envios-maritimos	Listar envíos marítimos
POST	/envios-maritimos	Crear un envío marítimo



## Diagrama E-R:
(link)https://runsql.com/r/24f060f4c7bee2ce


Abre el navegador y prueba:
usuario: user
Contrasena: 0e233d52-5484-497e-b23c-8909d42259b7


## 🤖  Contacto
🔹Desarrollado por: Erick Santiago Gallo 
                     Buritica
🔹Email: erick5.2@hotmail.com
🔹LinkedIn : https://www.linkedin.com/in/erick-santiago-gallo-buriticá-3b1b41276/
nota, revisar arquitectura_buenas_practicas.md que contiene informacion teorica solicitada.
