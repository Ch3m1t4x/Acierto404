<?php
    // include("paraIndex.php");
    require ('Header.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../CSS/Home.css">
    <link rel="stylesheet" href="../CSS/LogoAnimacion.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>My Website</title>
</head>

<body>
    <main>
        <!-- En la primera impresion debera de haber un banner en vez de ese h1 -->
        <section class="first-impression rounded-pill my-3 mx-3" style="background-color: #e14b6a;">      
            <div id="carouselExampleFade" class="carousel slide carousel-fade">
                <div class="carousel-inner rounded-pill banner">
                  <div class="carousel-item active">
                    <img src="/Acierto404/public/Imagenes/Banners/Banner3.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="/Acierto404/public/Imagenes/Banners/Banner2.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="/Acierto404/public/Imagenes/Banners/Banner1.png" class="d-block w-100" alt="...">
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
              </div>
        </section>
        <?php
        include('conexion.php');

        // Obtener los datos de los 3 productos
        $consultaProductos = "SELECT marca, modelo, precio FROM productos ORDER BY id DESC LIMIT 3";

        try {
            $stmt = $conn->prepare($consultaProductos);
            $stmt->execute();

            // Mostrar los productos
            if ($stmt->rowCount() > 0) {
                while ($filaProducto = $stmt->fetch(PDO::FETCH_ASSOC)) {
    ?>
        <section class="gallery_title">
            <h1>Galería de zapatillas más vendidas</h1>
        </section>

        <section>
            <div class="container py-5">
                <div class="row">
                    <div class="col-md-12 col-lg-4 mb-4 mb-lg-0">
                        <div class="card">
                            <div class="d-flex justify-content-between p-3">
                                <p class="lead mb-0">Adidas</p>
                            </div>
                            <img src="../Imagenes/Zapas/A_Response.png" class="card-img-top" alt="A_Response" />
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <p class="small"><a href="" class="text-muted">Precio</a></p>
                                    <p class="small text-danger"><s>260€</s></p>
                                </div>

                                <div class="d-flex justify-content-between mb-3">
                                    <h5 class="mb-0">Adidas Response</h5>
                                    <h5 class="text-dark mb-0">220€</h5>
                                </div>

                                <div class="d-flex justify-content-between mb-2">
                                    <p class="text-muted mb-0">Available: <span class="fw-bold">6</span></p>
                                    <div class="ms-auto text-warning">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 mb-4 mb-md-0">
                        <div class="card">
                            <div class="d-flex justify-content-between p-3">
                                <p class="lead mb-0">Nike</p>
                            </div>
                            <img src="../Imagenes/Zapas/N_AirMax1.png" class="card-img-top" alt="N_AirMax1" />
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <p class="small"><a href="" class="text-muted">Precio</a></p>
                                    <p class="small text-danger"><s>200€</s></p>
                                </div>

                                <div class="d-flex justify-content-between mb-3">
                                    <h5 class="mb-0">Air Max 1</h5>
                                    <h5 class="text-dark mb-0">180€</h5>
                                </div>

                                <div class="d-flex justify-content-between mb-2">
                                    <p class="text-muted mb-0">Available: <span class="fw-bold">7</span></p>
                                    <div class="ms-auto text-warning">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="far fa-star"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 mb-4 mb-md-0">
                        <div class="card">
                            <div class="d-flex justify-content-between p-3">
                                <p class="lead mb-0">New Balance</p>
                            </div>
                            <a href="Nb_106D.html">
                                <img src="../Imagenes/Zapas/Nb_1906D.png" class="card-img-top" alt="Nb_1906D" />
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <p class="small"><a href="" class="text-muted">Precio</a></p>
                                        <p class="small text-danger"><s>190€</s></p>
                                    </div>

                                    <div class="d-flex justify-content-between mb-3">
                                        <h5 class="mb-0">New Balance 1906D</h5>
                                        <h5 class="text-dark mb-0">165€</h5>
                                    </div>
                                    <div class="d-flex justify-content-between mb-2">
                                        <p class="text-muted mb-0">Available: <span class="fw-bold">5</span></p>
                                        <div class="ms-auto text-warning">
                                            <i class="fa fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star-half-alt"></i>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <?php
                }
            } else {
                echo "No hay productos disponibles.";
            }
        } catch (PDOException $e) {
            echo "Error: " . $e->getMessage();
        }

        $conn = null; // Cierra la conexión
    ?>


    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>

</html>