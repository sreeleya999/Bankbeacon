

import 'dart:convert';

import 'package:bank/auth/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';

import '../connect/connect.dart';
import '../screens/home.dart';
// import 'package:fluttertoast/fluttertoast.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var user=TextEditingController();
  var password=TextEditingController();
  Future<void> postdata()async{
    var data={
      "username":user.text,
      "password":password.text,
      "userType":'user'

    };
    var response = await post(Uri.parse('${Con.url}login.php'), body: data);
    print(response.body);
    var logID=jsonDecode(response.body)['reg_id'];
     print(logID);
    if(response.statusCode==200){
      if(jsonDecode(response.body)['message']=='User Successfully Logged In'){

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("user successfully loggedin ...")));

        Navigator.push(context,MaterialPageRoute(
          builder:(context)
          {
            return Home(
              uid:logID ,
            );
          },
        ));

      }

    else{

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Ivnalid Credential ! Failed to login ...")));

        Navigator.push(context,MaterialPageRoute(
          builder:(context)
          {
            return Login();
          },
        ));

      }
      //    Fluttertoast.showToast(msg: 'invalid username or password');

    }
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Center(
        child: SingleChildScrollView(
        child: Column(
            children: [
            Image.asset("assets/banking.gif"),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: user,
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
                controller: password,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "Password",hintText: "Enter your password",
                ),
              ),
            ),
            ElevatedButton(onPressed: () {
             postdata();
              //    Fluttertoast.showToast(msg: "login success",
              // toastLength: Toast.LENGTH_SHORT,
              //     gravity: ToastGravity.BOTTOM, timeInSecForIosWeb: 3,
              //      backgroundColor: Colors.blue,
              // fontSize: 10,
              //    );


            },
                style: ElevatedButton.styleFrom(
                  primary: Colors.indigo.shade900,
                ),
                child: Text("login")),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: InkWell(

                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context)
                  {
                    return Register();
                  },
                  ));

                },

                child: Text("New Registration?"),
              ),
            )
          ],
        ),
      ),
    )
    );

  }
}
