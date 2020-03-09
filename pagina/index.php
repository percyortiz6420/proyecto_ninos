<?php
include_once 'includes/user.php';
include_once 'includes/user_session.php';


$userSession = new UserSession();
$user = new user();

if (isset($_SESSION['user'])) {
    $user->setUser($userSession->getCurrentUser());
    include_once 'vistas/home.php';
} else if (isset($_POST['user']) && isset($_POST['pass'])) {

    $usserForm = $_POST['user'];
    $passForm = $_POST['pass'];

    if ($user->userExist($usserForm,$passForm)) {
        
        
        $userSession->setCurrentUser($usserForm);
        $user->setUser($usserForm);
        include_once 'vistas/home.php';
       
    }else {
        $errorLogin = "Nombre de usuario y o pass es incorrecto";
        include_once 'vistas/login.php';
        
    }


}else{
    include_once 'vistas/login.php';
}

?>