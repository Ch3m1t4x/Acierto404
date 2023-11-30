<?php

include('BD.php');

$consultaProductos = "SELECT * FROM productos ORDER BY id DESC";

try {
    $stmt = $conn->prepare($consultaProductos);
    $stmt->execute();
    
    // Mostrar los productos
    if ($stmt->rowCount() > 0) {
        while ($filaProducto = $stmt->fetch(PDO::FETCH_ASSOC)) {
            echo '<div class="col-md-6 col-lg-4 mb-4 mb-md-0">';
            echo '<div class="card">';
            echo '<div class="d-flex justify-content-between p-3">';
            echo '<p class="lead mb-0">' . $filaProducto['marca'] . '</p>';
            echo '</div>';
            echo '<img src="../Imagenes/Zapas/' . $filaProducto['modelo'] . '.png" class="card-img-top" alt="' . $filaProducto['modelo'] . '" />';
            echo '<div class="card-body">';
            echo '<div class="d-flex justify-content-between">';
            echo '<p class="small"><a href="" class="text-muted">Precio</a></p>';
            echo '<p class="small text-danger"><s>' . $filaProducto['precio'] . '€</s></p>';
            echo '</div>';
            echo '<div class="d-flex justify-content-between mb-3">';
            echo '<h5 class="mb-0">' . $filaProducto['modelo'] . '</h5>';
            echo '<h5 class="text-dark mb-0">' . $filaProducto['precio'] . '€</h5>';
            echo '</div>';
            echo '<div class="d-flex justify-content-between mb-2">';
            echo '<p class="text-muted mb-0">Available: <span class="fw-bold">7</span></p>';
            echo '<div class="ms-auto text-warning">';
            echo '<i class="fas fa-star"></i>';
            echo '<i class="fas fa-star"></i>';
            echo '<i class="fas fa-star"></i>';
            echo '<i class="fas fa-star"></i>';
            echo '<i class="far fa-star"></i>';
            echo '</div>';
            echo '</div>';
            echo '</div>';
            echo '</div>';
            echo '</div>';
        }
    } else {
        echo "No hay productos disponibles.";
    }
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}

$conn = null; // Cierra la conexión

?>
