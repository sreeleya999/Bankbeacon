import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../connect/connect.dart';

class Trackings extends StatefulWidget {
   Trackings({Key? key,required this.uid}) : super(key: key);
    var uid;
  @override
  State<Trackings> createState() => _TrackingsState();
}

class _TrackingsState extends State<Trackings> {
  var type=TextEditingController();
  var mobile=TextEditingController();
  Future<void> sendData() async {
    var data={
      "type":type.text,
      "mobile":mobile.text,

      "uid":widget.uid,
    };

    var response=await post(Uri.parse('${Con.url}tracking.php'),body: data);
    print(response.body);
    print(response.statusCode);
    if(jsonDecode(response.body)['result']=='success'){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(" Request Send Successfully  ...")));
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
          title: Text("Customer Request and Complaint"),
          backgroundColor: Colors.indigo.shade900,
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
                controller: type,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  labelText: "Request Type",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: mobile,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  labelText: "Mobile number",

                ),
              ),
            ),

            ElevatedButton(onPressed: (){
              if(type.text.isNotEmpty && mobile.text.isNotEmpty){
                if(mobile.text.length==10){
                  sendData();
                  setState(() {

                  });
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter a valid mobile number ...")));

                }

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
