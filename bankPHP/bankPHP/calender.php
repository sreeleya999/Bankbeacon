<?php
include 'connect.php';





$data=mysqli_query($conn,"SELECT * FROM calender; ");
$list=array();

if($data->num_rows>0){
    while($row=mysqli_fetch_assoc($data)){

    $myarray['id']=$row['calender_id'];
    $myarray['day']=$row['day_no'];
    $myarray['week']=$row['week_no'];
    $myarray['month']=$row['month_no'];
    $myarray['year']=$row['year_no'];
    $myarray['event']=$row['event'];
   
    
    $myarray['result']="success";

   
    array_push($list,$myarray);


    }   
} 
else{
    $myarray['result']="failed";
    array_push($list,$myarray);
 
}

echo json_encode($list);

?>