
<?php
include 'connect.php';
$uid=$_POST['uid'];
$type=$_POST['type'];
$mobile=$_POST['mobile'];
$sql = mysqli_query($conn,"INSERT INTO tracking(reg_id,type,mobile) 
values('$uid','$type','$mobile')");

if(mysqli_affected_rows($conn) > 0){
    $myarray['result']="success";
 //   $myarray['RegNo']= mysqli_insert_id($conn); //get the auto-increment ID of the last inserted row
} else {
    $myarray['result']="failed";
}
echo json_encode($myarray);

?>