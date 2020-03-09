$(document).ready(function(){
    var atencion = $('select#atencion_especial');
    atencion.formSelect();
    atencion.on('change',function () {
        
        if (atencion.val()=="Si"){
            $('#divatencion').attr('style','display:block;');
        }else{
            $('#divatencion').attr('style','display:none;');
        }
    });

    $('edad').focus(function () {
        $(this).select();   
    });
    function limpiar(){
        $('#nombre_encargado').val('');
        $('#apellido_encargado').val('');
        $('#telefono_encargado').val('');
        $('#email').val('');
        $('#edad').val('');
        $('#nombre_nino').val('');
        $('#apellido_nino').val('');
        $('select#atencion_especial option[value="No"]').attr('selected',true);  
        $('.na').text('');
        $('#descripcion_atencion').val('');
        $('#divatencion').attr('style','display:none;');
    };
    function validar(){
        if ($('#nombre_encargado').val()=='' || $('#apellido_encargado').val() == '' || $('#telefono_encargado').val()==''||
        $('#email').val()==''||
        $('#edad').val()==''||
        $('#nombre_nino').val()==''||
        $('#apellido_nino').val()=='') {

            
            return true;
        }
    };
    $("#cargar").on("submit", function(e){
        e.preventDefault();
        if (validar()) {
            var toastHTML = '<span> Rellene los campos obligatorios</span>';
                M.toast({html: toastHTML,classes: "#b71c1c red darken-4"});
        } else {
            
        

            var formData = new FormData(document.getElementById("cargar"));

            $.ajax({
                url: "insertar.php",
                type: "POST",
                dataType: "HTML",
                data: formData,
                cache: false,
                contentType: false,
                processData: false,

            beforeSend: function(){
                $(".loader").fadeOut("slow");
                $('.loader').attr('style','display:block;');
            },
            success:function(echo){
            
                $('.loader').attr('style','display:none;');
                if (echo == 3) {
                    var toastHTML = '<span>Formato de fotografia incorrecto!</span>';
                    M.toast({html: toastHTML,classes:"#b71c1c red darken-4"});
                }else if(echo == 2) {
                    var toastHTML = '<span>Error, intente de nuevo mas tarde!</span>';
                        M.toast({html: toastHTML,classes:"#b71c1c red darken-4"});
                        limpiar ();
                } else if (echo == 1){
                    var toastHTML = '<span>Datos Guardados!</span>';
                    M.toast({html: toastHTML,classes:"#1b5e20 green darken-4"});
                    limpiar();
                }

                
            
            
        
                
            }
            });
        };
        
    });
});
