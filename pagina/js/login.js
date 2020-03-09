$(document).ready(function(){
    $("#cargar").on("submit", function(e){
        e.preventDefault();
        var data=$(this).serialize();
        alert(data);
            
});




});