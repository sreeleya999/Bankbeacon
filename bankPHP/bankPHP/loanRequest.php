
      <?php
include 'connect.php';
$uid=$_POST['uid'];
$type=$_POST['type'];
$acNo=$_POST['acNo'];
$amt=$_POST['amt'];
$mobile=$_POST['mobile'];
$email=$_POST['email'];
$sql = mysqli_query($conn,"INSERT INTO loan(loan_type,account_no,mobile_no,email,reg_id) values('$type','$acNo','$mobile','$email','$uid')");

if(mysqli_affected_rows($conn) > 0){
    $myarray['result']="success";
 //   $myarray['RegNo']= mysqli_insert_id($conn); //get the auto-increment ID of the last inserted row
} else {
    $myarray['result']="failed";
}
echo json_encode($myarray);

?>