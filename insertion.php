<?php
include ("connection.php");

if(isset($_POST['submit'])){
    $sql="INSERT INTO `layer_details`(`id`, `name`, `parent_id`) VALUES ('','".$_REQUEST['name']."','".$_REQUEST['level']."')";
    $result=mysqli_query($con,$sql);
    if($result){
        echo "<h1>"."data inserted";
    }
}

?>