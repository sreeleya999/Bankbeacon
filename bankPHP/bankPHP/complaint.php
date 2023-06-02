
<?php
include 'connect.php';
$uid=$_POST['uid'];
$type=$_POST['type'];
$complaint=$_POST['complaint'];
$sql = mysqli_query($conn,"INSERT INTO complaint(reg_id,type,complaint) 
values('$uid','$type','$complaint')");

if(mysqli_affected_rows($conn) > 0){
    $myarray['result']="success";
 //   $myarray['RegNo']= mysqli_insert_id($conn); //get the auto-increment ID of the last inserted row
} else {
    $myarray['result']="failed";
}
echo json_encode($myarray);

?>