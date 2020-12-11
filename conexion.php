<?php 

$conexion=mysqli_connect('localhost','root','','db_wexty');
if(isset($conexion)){
    echo "Servidor conectado...";
    $sql="SELECT RUC_PARTNER, DEN_COMERCIAL from tbp1";
    $n_articulos ="SELECT ID_ARTICULO, DENO_ARTICULO, PRECIO_REF FROM tma1";

    $result=mysqli_query($conexion,$sql);
    $result_articulos=mysqli_query($conexion,$n_articulos);


}else{
    echo "Error de conexion";
}

?>