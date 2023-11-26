<?php
class Register {
    private $usuario;
    private $contraseña;
    private $errores = [];
    const PATERN = "/^(?=.*[A-Z])(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]{7,}$/";

    public function __construct($usuario, $contraseña) {
        $this->usuario = $usuario;
        $this->contraseña = $contraseña;
    }

    public function validate($name, $pass) {
        if($name == "") {
            $errores['name'] = 'El nombre no puede estar vacio';
        }if($pass == "") {
            $errores['passVacio'] = 'La contraseña no puede estar vacia ';
        }if (preg_match($pattern, $password)) {
            $errores['passMal'] = 'La contraseña debe tener al menos 7 caracteres un caracter especial y una mayuscula';
        }
    }


}
?>
