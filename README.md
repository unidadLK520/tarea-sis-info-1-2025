# tarea-sis-info-1-2025
Descripción del programa
Este proyecto es una aplicación que simula un sistema de compras, desarrollada en Java utilizando NetBeans como entorno de desarrollo y conectada a una base de datos MySQL a través de HeidiSQL.
Para utilizar el programa correctamente, se deben seguir los siguientes pasos:
Descargar el archivo .zip que contiene el proyecto y la base de datos.
Importar la base de datos en HeidiSQL.
Abrir el proyecto en NetBeans.
Importar la librería externa de MySQL Connector (MySQL Connector/J), necesaria para establecer la conexión con la base de datos.
Funcionamiento del sistema
Registro e inicio de sesión:
Para registrar un nuevo usuario, se deben completar todos los campos requeridos respetando el formato solicitado. De lo contrario, el sistema no permitirá el registro.
Para iniciar sesión, se debe proporcionar una dirección de correo electrónico válida y la contraseña registrada previamente.
Según el tipo de usuario, el sistema mostrará las funciones correspondientes.
Tipos de usuario y funcionalidades
Vendedor:
Registrar nuevos productos.
Visualizar los productos registrados.
Editar la información de sus productos.
Eliminar productos de la tabla visual (sin eliminarlos de la base de datos).
Cerrar sesión mediante un botón, lo que garantiza la seguridad del usuario.
Cliente o comprador:
Visualizar los productos disponibles en la tienda.
Realizar compras buscando los productos por su nombre completo.
Seleccionar el método de pago mediante un componente desplegable (JComboBox), con las siguientes opciones:
Pago con código QR.
Pago con tarjeta (crédito o débito).
Administrador:
Visualizar todos los usuarios registrados, excepto otros administradores.
Eliminar usuarios de la base de datos, impidiendo su acceso futuro al sistema.
Eliminar productos si lo considera necesario.
Consultar el historial de ventas registradas en el sistema.
