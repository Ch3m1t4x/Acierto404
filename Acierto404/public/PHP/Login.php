<?php
class Login {
    private $usuario;
    private $contraseña;
    private $errores = [];

    public function __construct($usuario, $contraseña) {
        $this->usuario = $usuario;
        $this->contraseña = $contraseña;
    }

    public function errors(){
        if($this->usuario == ""){
            $errores['name'] = 'El nombre no puede estar vacio';
            return false;
        }elseif($this->contraseña == ""){
            $errores['passVacio'] = 'La contraseña no puede estar vacia ';
            return false;
        }else{
            return true;
        }
    }

    public function validate(){
        //Esto no se hace con crypt se hace con password_hash

        $stmt = $conn->prepare("SELECT contraseña FROM usuarios WHERE nombre = ? LIMIT 1");
        $stmt->bindParam('s', $this->usuario);
        $stmt->execute();
        $pass = $stmt->fetch();
        if(password_verify($this->contraseña, $pass)){
            return true;
        }else{
            return false;
        }

    }

    public function getUsuario() {
        return $this->usuario;
    }

    public function getContraseña() {
        return $this->contraseña;
    }
}
?>
