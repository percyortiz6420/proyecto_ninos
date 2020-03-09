<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script  type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="js/materialize.min.js"></script> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
   
    <link rel="stylesheet" href="css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <title>Login</title>
    <style>
        #espacio{
            padding-top: 250px;
        }
        #imagen{
            padding-top: 90px;
            padding-left: 25px;
        }
        #cp{
            color: white;
        }
    
    </style>
</head> 
<body class="#e8f5e9 green lighten-5">

    <div class="container" id="pagina">
        <div class="col s12 m2" id="espacio">
            
          </div >
          
          <footer class="page-footer #43a047 green darken-1 z-depth-3 ">
              <div class="row">
                <div class="col l5   s12">
                
                  <img class="materialboxed responsive-img" width="450" src="img/logo.png" id="imagen" >
                  
                </div>
                
                
                <div class="col l5 offset-l1 s12 card-panel #81c784 green lighten-2 z-depth-3" id="info">
            <form method="POST" accept-charset="utf-8" method="POST" id="cargar" enctype="multipart/form-data" action="">
              
                  <center><h3 class="white-text">Login Ebenekids</h3></center>
                  <hr>
                  <div class="input-field col s12">
                    <i class="material-icons prefix">account_circle</i>
                    <input placeholder="Usuario" id="first_name" type="text" class="validate" name="user">
                    <label class="white-text" for="first_name">Usuario</label>
                  </div>
                  <div class="input-field col s12">
                    <i class="material-icons prefix">vpn_key</i>
                    <input placeholder="Contrase&ntilde;a" id="password" type="password" class="validate" name="pass">
                    <label  class="white-text" for="password">Contrase&ntilde;a</label>
                  </div>
                  <center>
                  <button class="btn waves-effect waves-light" type="submit" name="boton" id="ingresar">Ingresar
                    <i class="material-icons right">send</i>
                  </button>
                </center>
                <br>
            </form>
                </div>

            
            
            </div>
            <div class="row">
                <label for="copyright" id="cp">©2020 Ebenekids Guatemala, All rights reserved.</label> 
            </div>
            
          </footer>
          <?
                if (isset($errorLogin)) {
                  $mensaje = '<div class="col s12 m8 offset-m2 l6 offset-l3">
                  <div class="card-panel #d32f2f red darken-2 z-depth-3">
                   
                     
                      <div class="col s10">
                        <span class="white-text"><center>
                          Ingreso Incorrecto! Contrase&ntilde;a y/o usuario incorrectos.
                          </center>
                        </span>
                      </div>
                    
                  </div>
                </div>';
                  echo $mensaje;
                }
              ?>
      </div>
      
   
</body>
      
</html>
