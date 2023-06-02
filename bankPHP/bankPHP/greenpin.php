
<?php
include 'connect.php';
$uid=$_POST['uid'];
$cardNo=$_POST['cardNo'];
$acNo=$_POST['acNo'];
$sql = mysqli_query($conn,"INSERT INTO greenpin(reg_id,account_no,debitcard_no) values('$uid','$cardNo','$acNo')");

if(mysqli_affected_rows($conn) > 0){
    $myarray['result']="success";
 //   $myarray['RegNo']= mysqli_insert_id($conn); //get the auto-increment ID of the last inserted row
} else {
    $myarray['result']="failed";
}
echo json_encode($myarray);

?>