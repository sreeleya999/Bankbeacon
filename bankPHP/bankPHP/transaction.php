
<?php
include 'connect.php';
$uid=$_POST['uid'];
$acNo=$_POST['acNo'];
$amt=$_POST['amt'];
$mobile=$_POST['mobile'];
$type=$_POST['type'];
$sql = mysqli_query($conn,"INSERT INTO transaction_id(account_no,amount,mobile_no,reg_id,transaction_type) values('$acNo','$amt','$mobile','$uid','$type')");

if(mysqli_affected_rows($conn) > 0){
    $myarray['result']="success";
 //   $myarray['RegNo']= mysqli_insert_id($conn); //get the auto-increment ID of the last inserted row
} else {
    $myarray['result']="failed";
}
echo json_encode($myarray);

?>