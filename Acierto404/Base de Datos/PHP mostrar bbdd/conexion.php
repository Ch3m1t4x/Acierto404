<?php
// Configuración de la conexión a la base de datos
$servidor = "localhost";
$usuario = "tu_usuario"; // Reemplaza 'tu_usuario' con el nombre de usuario de tu base de datos
$contrasena = "tu_contrasena"; // Reemplaza 'tu_contrasena' con la contraseña de tu base de datos
$base_de_datos = "404acierto"; // Reemplaza 'nombre_de_tu_base_de_datos' con el nombre de tu base de datos

// Crear conexión
$conexion = new mysqli($servidor, $usuario, $contrasena, $base_de_datos);

// Verificar la conexión
if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}

// Configurar el juego de caracteres a UTF-8 (opcional)
$conexion->set_charset("utf8");
?>
