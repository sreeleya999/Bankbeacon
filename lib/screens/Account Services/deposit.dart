import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../connect/connect.dart';

class Deposit extends StatefulWidget {
   Deposit({Key? key,required this.uid}) : super(key: key);
var uid;
  @override
  State<Deposit> createState() => _DepositState();
}

class _DepositState extends State<Deposit> {
  var acNo=TextEditingController();

  var mobile=TextEditingController();
  var amt=TextEditingController();
  Future<void> sendData() async {
    var data={
      "acNo":acNo.text,

      "mobile":mobile.text,
      "amt":amt.text,
      "type":'Deposit',
      "uid":widget.uid,
    };

    var response=await post(Uri.parse('${Con.url}transaction.php'),body: data);
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
          title: Text("Deposit Amount"),
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
                controller: acNo,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  labelText: "Account Number",
                  hintText: "Enter Card Id...",
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: amt,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  labelText: "Amount",
                  hintText: "Enter Amount...",
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
                  labelText: "Mobile",
                  hintText: "Enter Mobile Number...",
                ),
              ),
            ),

            ElevatedButton(onPressed: (){

              if(acNo.text.isNotEmpty && amt.text.isNotEmpty && mobile.text.isNotEmpty){
                sendData();
                setState(() {

                });
              }else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("All Fields Required ...")));

              }

            },style: ElevatedButton.styleFrom(
              primary: Colors.indigo.shade900,
            ),
                child: Text("Deposit")),
          ],
        ),
      ),
    );
  }
}
