<?php
    <?php
    $con=new mysqli("localhost","root","","test");
    $table='student';
    $arr = array('id' => 3,'Namel' => 'Rounak','Course' => 'ABC');
    function insert($con,$table,$arr){
        if(!$con){
            echo "connection failed";
        }
        else{
        foreach($arr as $id=>$data){
            $field[]=$id;
            $value[]=$data;
           
        }
        $field = implode(",",$field);
        $value = implode(",",$value);
        $sql = "INSERT INTO $table VALUES ($value)";
        //$sql="INSERT INTO `student`(`id`, `Namel`, `Course`) VALUES ('2','ABC','ABC')";
        $res = mysqli_query($con,$sql);
        if($res){
            echo " Data inserted";
        }
        else{
            echo " Data is not inserted";
        }
        }
    }
    insert($con,$table,$arr);
?>
    
