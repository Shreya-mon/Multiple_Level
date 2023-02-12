<?php
include ("connection.php");
$res=mysqli_query($con,"select * from layer_details");
$arr=[];
while($row=mysqli_fetch_assoc($res)){
	$arr[$row['id']]['name']=$row['name'];
	$arr[$row['id']]['parent_id']=$row['parent_id'];
}
display($arr,0);
function display($arr,$parent,$level = 0,$prelevel = -1){
	foreach($arr as $id=>$data){
		if($parent==$data['parent_id']){
			if($level>$prelevel){
				echo "<ol>";
			}
			if($level==$prelevel){
				echo "</li>";
			}
			echo "<li>".$data['name'];
			if($level>$prelevel){
				$prelevel=$level;
			}
			$level++;
			display($arr,$id,$level,$prelevel);
			$level--;	
		}
		
	}
	if($level==$prelevel){
		echo "</li></ol>";
	}
	
}
//echo "<pre>";
//print_r($arr);
?>