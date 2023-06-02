<?php
include 'connect.php';
  $username=$_POST['username'];
  $password=$_POST['password'];
 $sql= mysqli_query($conn,"SELECT * from login where username='$username' && password='$password' && type='user'");
  if($sql->num_rows>0){
    while($row=mysqli_fetch_assoc($sql)){
        $myarray['message']='User Successfully Logged In';
         $myarray['login_id']=$row['login_id'];
    }
  }
  else{
    $myarray['message']='Failed to Login';
  }
echo json_encode($myarray);
?>