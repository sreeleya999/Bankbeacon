<?php
include 'connect.php';
$fname=$_POST['fname'];
$lname=$_POST['lname'];
$username=$_POST['username'];
$password=$_POST['password'];
$user_type=$_POST['userType'];


$sql1 = mysqli_query($conn, "INSERT INTO login(username,password,type) values('$username','$password','$user_type')");
$user_id = mysqli_insert_id($conn);
$sql2 = mysqli_query($conn,"INSERT INTO register(Firstname,Lastname,log_id) values('$fname','$lname','$user_id')");
if($sql1 && $sql2){
    $myarray['result']="success";

    $myarray['response']="Done";
}else{

    $myarray['result']="failed";
}
echo json_encode($myarray);

?>