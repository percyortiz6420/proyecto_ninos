
<?php

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <script  type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="js/materialize.min.js"></script> 
  
    <link rel="stylesheet" href="css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
    <title>home</title>
</head>
<style>

body {
  background: url("img/logo.png") fixed;
  background-position: center center;
  background-repeat: no-repeat;
  -webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;
  background-color: #e8f5e9;
  
}
</style>
<script>
$(document).ready(function(){

  var id_usuario ='<?php echo $user->getNombre();?>';
  alert(id_usuario);
  $(".dropdown-trigger").dropdown();
  $('.sidenav').sidenav();
});
  function hola(){
    $.get( "consultar.php", function( data ) {
      $("#contenedor").html(data);
    });
  };
  function hola2(){
    $.get( "fichasis.html", function( data ) {
      $("#contenedor").html(data);
    });
  };

</script>
<body>

<ul id="dropdown1" class="dropdown-content">
<li><a href="#!">two</a></li>
  <li><a href="#!">two</a></li>
  <li class="divider"></li>
  <li><input type="button" id="mostrar" class="waves-effect waves-light btn #81c784 green lighten-2 btn-flat" value='          Ficha         ' onclick="hola2();"></li>
  <li><input type="button" id="mostrar" class="waves-effect waves-light btn #81c784 green lighten-2 btn-flat" value='Registro Ficha' onclick="hola();"></li>
</ul>

<nav class="#43a047 green darken-1">
    <div class="nav-wrapper">
      <a href="#" class="brand-logo">Control Ni&ntilde;os</a>
      
      <ul id="slide-out" class="sidenav">
    <li><div class="user-view">
      <div class="background">
        hola
        
      </div>
      
    </div></li>
    
    <li><input type="button" id="mostrar" class="waves-effect waves-light btn #81c784 green lighten-2 btn-flat" value='          Ficha         ' onclick="hola2();"></li>
  <li><input type="button" id="mostrar" class="waves-effect waves-light btn #81c784 green lighten-2 btn-flat" value='Registro Ficha' onclick="hola();"></li>
    <li><div class="divider"></div></li>
    <li><a class="subheader">Salida</a></li>
    <li><a href="includes/logout.php">Cerrar Sesion</a></li>
      </ul>
      <a href="#" data-target="slide-out" class="sidenav-trigger"><i class="material-icons">menu</i></a>
      <ul class="right hide-on-med-and-down">
        <li id="sass"><a href="" id="sass">Sass</a></li>
        <li><a href="includes/logout.php">Cerrar Sesion</a></li>
        <li><a href="#" >Registro</a></li>
        
        <li><a class="dropdown-trigger" href="#!" data-target="dropdown1">Dropdown<i class="material-icons right">arrow_drop_down</i></a></li>
      </ul>
    </div>
  </nav>
  <br>
  <div class="container z-depth-2 #ffffff white" id="contenedor">
  
    
      </div>
   
  
</body>
</html>