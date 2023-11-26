<?php

include ('Login.php');

session_start();
if(isset($_POST['logear'])){
    $login = new Login($_POST['username'], $_POST['pass']);
    if($login->errors()){
        if($login -> validate()){
            header('Location:Home.php');
            die();
        }
    }
}


if($_SESSION['login']!=true){
    $login = '<form action="Header.php" method="post" class="form_login">';
        $login .= '<input type="text" name="username" placeholder="Username">';
        $login .= '<input type="password" name="pass" placeholder="Password">';
        $login .= '<button type="submit" name="logear" class="rounded border border-dark">Log In</button>';
        $login .= '<br>';
        $login .= '<a href="Register.html" id="Register">Crear Cuenta</a>';
    $login .= '</form>';
}else {
    $login = '<button class="btn btn-primary">';
        $login .= '<img src="" class="rounded-circle" alt="Foto de perfil">';
    $login .= '</button>';
}

?>
    <link rel="stylesheet" href="../CSS/Header.css">

<header>
        <a href="Home.html" id="Logo">
            <img src="../Imagenes/Logo/Logo.png" alt="Logo" class="logo">
            <h2>ACIERTO 404</h2>
        </a>
        <nav>
            <ul>
                <li><a href="Home.html">Inicio</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Fútbol</a></li>
                <li><a href="#">Baloncesto</a></li>
            </ul>
        </nav>
        <?=$login?>
    </header>;