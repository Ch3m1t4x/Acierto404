<?php

include('BD.php');

$consultaProductos = "SELECT * FROM productos";

try {
    $stmt = $conn->prepare($consultaProductos);
    $stmt->execute();
    $filaProducto = $stmt->fetchAll();
    foreach ($filaProducto as $producto) {
        $cards[]= '<div class="col-md-6 col-lg-4 mb-4 mb-md-0">';
        $cards[].= '<div class="card">';
        $cards[].= '<div class="d-flex justify-content-between p-3">';
        $cards[].= '<p class="lead mb-0">' . $producto['marca'] . '</p>';
        $cards[].= '</div>';
        $cards[].= '<img src="../Imagenes/Zapas/' . $producto['modelo'] . '.png" class="card-img-top" alt="' . $producto['modelo'] . '" />';
        $cards[].= '<div class="card-body">';
        $cards[].= '<div class="d-flex justify-content-between">';
        $cards[].= '<p class="small"><a href="" class="text-muted">Precio</a></p>';
        $cards[].= '<p class="small text-danger"><s>' . $producto['precio'] . '€</s></p>';
        $cards[].= '</div>';
        $cards[].= '<div class="d-flex justify-content-between mb-3">';
        $cards[].= '<h5 class="mb-0">' . $producto['modelo'] . '</h5>';
        $cards[].= '<h5 class="text-dark mb-0">' . $producto['precio'] . '€</h5>';
        $cards[].= '</div>';
        $cards[].= '<div class="d-flex justify-content-between mb-2">';
        $cards[].= '<p class="text-muted mb-0">Available: <span class="fw-bold">7</span></p>';
        $cards[].= '<div class="ms-auto text-warning">';
        $cards[].= '<i class="fas fa-star"></i>';
        $cards[].= '<i class="fas fa-star"></i>';
        $cards[].= '<i class="fas fa-star"></i>';
        $cards[].= '<i class="fas fa-star"></i>';
        $cards[].= '<i class="far fa-star"></i>';
        $cards[].= '</div>';
        $cards[].= '</div>';
        $cards[].= '</div>';
        $cards[].= '</div>';
        $cards[].= '</div>';
    }
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}

echo $cards[0];
$conn = null; // Cierra la conexión

?>
