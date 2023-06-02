import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../connect/connect.dart';

class Complaints extends StatefulWidget {
   Complaints({Key? key,required this.uid}) : super(key: key);
    var uid;
  @override
  State<Complaints> createState() => _ComplaintsState();
}

class _ComplaintsState extends State<Complaints> {
  var type=TextEditingController();
  var complaint=TextEditingController();
  Future<void> sendData() async {
    var data={
      "type":type.text,
      "complaint":complaint.text,

      "uid":widget.uid,
    };

    var response=await post(Uri.parse('${Con.url}complaint.php'),body: data);
    print(response.body);
    print(response.statusCode);
    if(jsonDecode(response.body)['result']=='success'){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(" Complaint Send Successfully  ...")));
      Navigator.pop(context);
    }else
    {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed to Send Complaint  ...")));
      Navigator.pop(context);
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Raise Complaint"),
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
                  labelText: "Complaint Type",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: complaint,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  labelText: "Complaints",

                ),
              ),
            ),

            ElevatedButton(onPressed: (){
              if(type.text.isNotEmpty && complaint.text.isNotEmpty){
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
