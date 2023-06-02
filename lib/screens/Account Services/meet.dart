import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../connect/connect.dart';

class MeetManager extends StatefulWidget {
   MeetManager({Key? key,required this.uid}) : super(key: key);
var uid;
  @override
  State<MeetManager> createState() => _MeetManagerState();
}

class _MeetManagerState extends State<MeetManager> {
  var reason=TextEditingController();

  Future<void> sendData() async {
    var data={
      "reason":reason.text,
      "uid":widget.uid,
    };

    var response=await post(Uri.parse('${Con.url}meetRequest.php'),body: data);
    print(response.body);
    print(response.statusCode);
    if(jsonDecode(response.body)['result']=='success'){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(" Request Send successfully  ...")));
      Navigator.pop(context);
    }else
    {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed to Send Request  ...")));
      Navigator.pop(context);
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Meet Manager..!!"),
          backgroundColor: Colors.indigo.shade900,
          centerTitle: true,
          actions: [
            Icon(Icons.home),
          ]
      ),
      body:Center(
        child: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.all(15.0),
            //   child: TextField(
            //     decoration: InputDecoration(
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(0),
            //       ),
            //       labelText: "First Name",
            //       hintText: "Enter Firstname...",
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(15.0),
            //   child: TextField(
            //     decoration: InputDecoration(
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(0),
            //       ),
            //       labelText: "Last Name",
            //       hintText: "Enter Lastname...",
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: reason,
                maxLines: 5,
                maxLength: 300,
                decoration: InputDecoration(

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  labelText: "Reason",
                  hintText: "Enter Reason...",

                ),
              ),
            ),


            ElevatedButton(onPressed: (){
              if(reason.text.isNotEmpty ){
                sendData();
                setState(() {

                });
              }else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("All Fields Required ...")));

              }

            },style: ElevatedButton.styleFrom(
              primary: Colors.indigo.shade900,
            ),
                child: Text("Submit")),
          ],
        ),
      ),
    );
  }
}
