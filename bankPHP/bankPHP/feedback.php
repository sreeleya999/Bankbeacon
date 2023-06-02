
<?php
include 'connect.php';
$uid=$_POST['uid'];
$msg=$_POST['msg'];
$sql = mysqli_query($conn,"INSERT INTO feedback(reg_id,feedback) values('$uid','$msg')");

if(mysqli_affected_rows($conn) > 0){
    $myarray['result']="success";
 //   $myarray['RegNo']= mysqli_insert_id($conn); //get the auto-increment ID of the last inserted row
} else {
    $myarray['result']="failed";
}
echo json_encode($myarray);

?>