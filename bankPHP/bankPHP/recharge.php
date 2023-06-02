
<?php
include 'connect.php';
$uid=$_POST['uid'];
$amt=$_POST['amount'];
$mobile=$_POST['mobile'];
$operator=$_POST['operator'];
$sql = mysqli_query($conn,"INSERT INTO recharge(reg_id,operator_status,amount,mobile_no)
 values('$uid','$operator','$amt','$mobile')");

if(mysqli_affected_rows($conn) > 0){
    $myarray['result']="success";
 //   $myarray['RegNo']= mysqli_insert_id($conn); //get the auto-increment ID of the last inserted row
} else {
    $myarray['result']="failed";
}
echo json_encode($myarray);

?>