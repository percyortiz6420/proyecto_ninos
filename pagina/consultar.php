<?php 
session_start();
require('conexion.php');


  
    $mensaje2 = "";
    $q = "SELECT * FROM `encargado` where id_encargado"; 
    $conn=mysqli_query($connection,$q);
    $mensaje = '<table>
    <thead>
      <tr>
          <th>nombre</th>
          <th>apellido</th>
          <th>edad</th>
          <th>ficha</th>
          <th>nombre nino</th>
          <th>apellido</th>
          <th>foto</th>
      </tr>
    </thead>';
    
    while($resultados = mysqli_fetch_array($conn)) {
        $ruta = $resultados['ruta'];
        $nombre_encargado = $resultados['nombre'];
        $apellido= $resultados['apellido'];
        $edad = $resultados['edad'];
        $ficha = $resultados['id_encargado'];
        $nombre_nino = $resultados['nombre_nino'];
        $apellido_nino = $resultados['apellido_nino'];
        $email =$resultados['email'];
        $image = '';
        $exif='';

        $image = imagecreatefromjpeg($ruta);
        $exif = exif_read_data($ruta);
        if(!empty($exif['Orientation'])) {
            switch($exif['Orientation']) {
                case 8:
                    $image = imagerotate($image,90,0);
                    break;
                case 3:
                    $image = imagerotate($image,180,0);
                    break;
                case 6:
                    $image = imagerotate($image,-90,0);
                    break;
            }
        }
        imagejpeg($image, $ruta);
        




        
        $mensaje2 =$mensaje2.'
        <tbody>
          <tr>
            <td>'.$nombre_encargado.'</td>
            <td>'.$apellido.'</td>
            <td>'.$edad.'</td>
            <td>'.$ficha.'</td>
            <td>'.$nombre_nino.'</td>
            <td>'.$apellido_nino.'</td>
            <td><img src="'.$ruta.'" class="materialboxed" width="40px"></td>
          </tr>
          
        </tbody>
        ';
       
       

    };

    $mensaje = $mensaje.$mensaje2.'</table>';
    echo $mensaje;
    
    
?>
