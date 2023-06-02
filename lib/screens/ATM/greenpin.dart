import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../connect/connect.dart';

class Greenpin extends StatefulWidget {
   Greenpin({Key? key,required this.uid}) : super(key: key);
var uid;
  @override
  State<Greenpin> createState() => _GreenpinState();
}

class _GreenpinState extends State<Greenpin> {
  var cardNo=TextEditingController();
  var acNo=TextEditingController();
  Future<void> sendData() async {
    print(acNo.text);
    print(cardNo.text);
    var data={
      "cardNo":cardNo.text,
      "acNo":acNo.text,

      "uid":widget.uid,
    };

    var response=await post(Uri.parse('${Con.url}greenpin.php'),body: data);
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
          title: Text("Generate Green PIN"),
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
                controller: cardNo,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  hintText: "Last 4 digits of your debit card ",

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: acNo,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  hintText: "Last 4 digits of account number",
                ),
              ),
            ),

            ElevatedButton(onPressed: (){
              print('pressed submit button');
              if(acNo.text.isNotEmpty && cardNo.text.isNotEmpty ){
                if(acNo.text.length==4 && cardNo.text.length==4){
                  print('Inside true to send data');
                  sendData();
                  setState(() {

                  });
                }else
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid Inputs ! ! Only 4 digit inputs allowed ...")));

              }else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("All Fields Required ...")));

              }

            },
                child: Text("Submit")
            ),
            const SizedBox(height: 15),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
                child: Text("Cancel")),

          ],
        ),
      ),

    );
  }
}




