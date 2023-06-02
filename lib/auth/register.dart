import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';

import '../connect/connect.dart';
import 'login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var fname=TextEditingController();
  var lname=TextEditingController();
  var Username=TextEditingController();
  var Password=TextEditingController();
  var ConfirmPassword=TextEditingController();

  Future<void> sendData() async {
    print(Username.text);
    print(Password.text);
    print(ConfirmPassword.text);
    var data={

      "fname":fname.text,
      "lname":lname.text,
      "username":Username.text,
      "password":Password.text,
      'userType':'user'

    };

    var response=await post(Uri.parse('${Con.url}register.php'),body: data);

    print(response.body);
    print(response.statusCode);
    if(jsonDecode(response.body)['result']=='success'){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Registered..... ...")));

      Navigator.push(
        context, MaterialPageRoute(builder: (context) => Login()),
      );

    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed to Register ...")));
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => Register()),
      );

    }



  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Register your Account"),
          centerTitle: true,
        ),
        body:Center(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(

                    controller: fname,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: "First name",hintText: "Enter your First name",
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(

                    controller: lname,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: "Last name",hintText: "Enter your Last name",
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(

                    controller: Username,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: "User name",hintText: "Enter your user name",
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    controller: Password,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: "Password",hintText: "Enter your password",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    controller: ConfirmPassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: "Confirm Password",hintText: "Enter your password again",
                    ),
                  ),
                ),


                ElevatedButton(
        onPressed: () {
          if (fname.text.isNotEmpty && lname.text.isNotEmpty &&
              Username.text.isNotEmpty && Password.text.isNotEmpty) {
            if(Password.text.length<6 ){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Password length should be atleast 6  ....")));

            }


            if (Password.text == ConfirmPassword.text) {
              sendData();
              setState(() {

              });
            } else {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Password Missmatch Found....")));



              // Fluttertoast.showToast(msg: "Password Missmatch Found...",
              //   toastLength: Toast.LENGTH_SHORT,
              //   gravity: ToastGravity.BOTTOM,
              //   timeInSecForIosWeb: 3,
              //   backgroundColor: Colors.blue,
              //   fontSize: 10,
              // );
            }
          }
          else {


            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("All Fields Required....")));

            // Fluttertoast.showToast(msg: "Password Missmatch Found...",
            //   toastLength: Toast.LENGTH_SHORT,
            //   gravity: ToastGravity.BOTTOM,
            //   timeInSecForIosWeb: 3,
            //   backgroundColor: Colors.blue,
            //   fontSize: 10,
            // );

          }
        },
                    child: Text("SIGNUP")),


              ],
            )
        )

    );
  }
}
