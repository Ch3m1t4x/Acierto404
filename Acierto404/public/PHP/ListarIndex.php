<?php

include('BD.php');

$consultaProductos = "SELECT * FROM productos";

try {
    $stmt = $conn->prepare($consultaProductos);
    $stmt->execute();
    $filaProducto = $stmt->fetchAll();
    for ($i=0; $i < count($filaProducto); $i++) { 
        $cards[$i] = '<div class="col-md-6 col-lg-4 mb-4 mb-md-0">';
        $cards[$i].= "<div class='card'>";
        $cards[$i].= '<div class="d-flex justify-content-between p-3">';
        $cards[$i].= '<p class="lead mb-0">' . $filaProducto[$i]['marca'] . '</p>';
        $cards[$i].= '</div>';
        $cards[$i].= '<img src="../Imagenes/Zapas/' . $filaProducto[$i]['modelo'] . '.png" class="card-img-top" alt="' . $filaProducto[$i]['modelo'] . '" />';
        $cards[$i].= '<div class="card-body">';
        $cards[$i].= '<div class="d-flex justify-content-between">';
        $cards[$i].= '<p class="small"><a href="" class="text-muted">Precio</a></p>';
        $cards[$i].= '<p class="small text-danger"><s>' . $filaProducto[$i]['precio'] . '€</s></p>';
        $cards[$i].= '</div>';
        $cards[$i].= '<div class="d-flex justify-content-between mb-3">';
        $cards[$i].= '<h5 class="mb-0">' . $filaProducto[$i]['modelo'] . '</h5>';
        $cards[$i].= '<h5 class="text-dark mb-0">' . $filaProducto[$i]['precio'] . '€</h5>';
        $cards[$i].= '</div>';
        $cards[$i].= '<div class="d-flex justify-content-between mb-2">';
        $cards[$i].= '<p class="text-muted mb-0">Available: <span class="fw-bold">7</span></p>';
        $cards[$i].= '<div class="ms-auto text-warning">';
        $cards[$i].= '<i class="fas fa-star"></i>';
        $cards[$i].= '<i class="fas fa-star"></i>';
        $cards[$i].= '<i class="fas fa-star"></i>';
        $cards[$i].= '<i class="fas fa-star"></i>';
        $cards[$i].= '<i class="far fa-star"></i>';
        $cards[$i].= '</div>';
        $cards[$i].= '</div>';
        $cards[$i].= '</div>';
        $cards[$i].= '</div>';
        $cards[$i].= '</div>';
    }
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
// $conn = null; // Cierra la conexión

?>
