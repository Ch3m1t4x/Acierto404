<!-- este fichero es para mostrar todos los productos que tengan 'Adidas' (o cualqueir valor) en su campo 'marca' -->

<?php
include('conexion.php');

$marcaBuscada = "adidas"; //sustituir en un futuro por variable para poder usar este fichero en todos los casos (o hacer un fichero por marca, irrelevante mientras funcione)
$consultaAdidas = "SELECT * FROM productos WHERE marca = ?";
$tiposAdidas = "s";

$resultadoAdidas = ejecutarConsulta($consultaAdidas, $tiposAdidas, $marcaBuscada);

// Mostrar los productos de la marca 'adidas'
if ($resultadoAdidas->num_rows > 0) {
    while ($filaAdidas = $resultadoAdidas->fetch_assoc()) {
        echo "ID: " . $filaAdidas['id'] . ", Marca: " . $filaAdidas['marca'] . ", Modelo: " . $filaAdidas['modelo'] . ", Precio: " . $filaAdidas['precio'] . "<br>";
    }//EN ESTE ECHO SE DEBE SUSTITUIR EL TEXTO POR LAS ETIQUETAS (DIV, SPAN, ETC) CORRESPONDIENTES.
} else {
    echo "No hay productos de la marca 'adidas'.";
}

$conexion->close();
?>
