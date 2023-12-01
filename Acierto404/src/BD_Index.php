<?php
include('conexion.php');

$consultaProductos = "SELECT * FROM productos ORDER BY fecha_creacion DESC";
$resultadoProductos = ejecutarConsulta($consultaProductos);

// Mostrar los productos
if ($resultadoProductos->num_rows > 0) {
    while ($filaProducto = $resultadoProductos->fetch_assoc()) {
        echo "ID: " . $filaProducto['id'] . ", Marca: " . $filaProducto['marca'] . ", Modelo: " . $filaProducto['modelo'] . ", Precio: " . $filaProducto['precio'] . "<br>";
    }//EN ESTE ECHO SE DEBE SUSTITUIR EL TEXTO POR LAS ETIQUETAS (DIV, SPAN, ETC) CORRESPONDIENTES.
} else {
    echo "No hay productos disponibles.";
}

$conexion->close();
?>
