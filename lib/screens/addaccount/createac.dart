import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Createac extends StatefulWidget {
  Createac({Key? key,required this.uid}) : super(key: key);
  var uid;
  @override
  State<Createac> createState() => _CreateacState();
}

class _CreateacState extends State<Createac> {
  var reg_id=TextEditingController();

  var mobile_no=TextEditingController();
  var email=TextEditingController();
  var account_type=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Create Account..!"),
          backgroundColor:Colors.indigo.shade900,
          centerTitle: true,
          actions: [
            Icon(Icons.home),
          ]
      ),
      body:Center(
        child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: reg_id,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    labelText: "Name",
                    hintText: "Enter Name...",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: reg_id,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    labelText: "Email",
                    hintText: "Enter email...",
                  ),
                ),
              ),Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: reg_id,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    labelText: "Mobile No",
                    hintText: "Enter Mobileno...",
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: account_type,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    labelText: "Account Type",
                    hintText: "Enter Account Type...",
                  ),
                ),
              ),

              ElevatedButton(onPressed: (){

              },style: ElevatedButton.styleFrom(
                  primary: Colors.indigo.shade900,),
                  child: Text("Submit")),
            ]
        ),
      ),
    );
  }
}
