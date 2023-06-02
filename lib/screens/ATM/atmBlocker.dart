import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../connect/connect.dart';

class Atmblock extends StatefulWidget {
  Atmblock({Key? key,required this.uid}) : super(key: key);
var uid;
  @override
  State<Atmblock> createState() => _AtmblockState();
}

class _AtmblockState extends State<Atmblock>{
  var cardNo=TextEditingController();
  Future<void> sendData() async {
    var data={
      "cardNo":cardNo.text,

      "uid":widget.uid,
    };

    var response=await post(Uri.parse('${Con.url}atmBlocker.php'),body: data);
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
          ]),
      body: Center(
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
                  labelText: "lost Card?",
                  hintText: "Last 4 digits of your card  number",
                ),
              ),
            ),
            ElevatedButton(onPressed: () {
              if(cardNo.text.isNotEmpty ){
                sendData();
                setState(() {

                });
              }else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Field required   ...")));

              }
            }, child: Text("Submit")),
            const SizedBox(height: 15),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text("Cancel")),
          ],
        ),
      ),
    );
  }
}
