import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../connect/connect.dart';

class SendFeedback extends StatefulWidget {
  SendFeedback({Key? key,required this.uid}) : super(key: key);
  var uid;
  @override
  State<SendFeedback> createState() => _SendFeedbackState();
}

class _SendFeedbackState extends State<SendFeedback> {
  var msg=TextEditingController();
  Future<void> sendData() async {
    var data={
      "msg":msg.text,

      "uid":widget.uid,
    };

    var response=await post(Uri.parse('${Con.url}feedback.php'),body: data);
    print(response.body);
    print(response.statusCode);
    if(jsonDecode(response.body)['result']=='success'){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(" Feedback Send Successfully  ...")));
      Navigator.pop(context);
    }else
    {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed to Send Feedback  ...")));
      Navigator.pop(context);
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Feedback"),
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
                controller: msg,
                maxLines: 3,
                maxLength: 200,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  labelText: "Feedback",


                ),
              ),
            ),

            ElevatedButton(onPressed: (){
              if(msg.text.isNotEmpty){
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
