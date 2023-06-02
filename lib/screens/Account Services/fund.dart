import 'dart:convert';

import 'package:bank/screens/Account%20Services/viewfund.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../connect/connect.dart';


class FundTransfer extends StatefulWidget {
   FundTransfer({Key? key,required this.uid}) : super(key: key);
var uid;
  @override
  State<FundTransfer> createState() => _FundTransferState();
}

class _FundTransferState extends State<FundTransfer> {
  var acNo=TextEditingController();
  var amt=TextEditingController();
  var mobile=TextEditingController();

  get index => null;
  Future<void> sendData() async {
    var data = {
      "acNo": acNo.text,
      "amt": amt.text,
      "mobile": mobile.text,
      "type": 'Transfer',
      "uid": widget.uid
    };
    print(data);

    var response = await post(
        Uri.parse('${Con.url}transaction.php'), body: data);
    print(response.body);
    var res = jsonDecode(response.body);
    print(widget.uid);
    print(response.statusCode);
    if (jsonDecode(response.body)['result'] == 'success') {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Fund Transfered successfully..')));
      // Navigator.pop(context);
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Viewfund(uid: widget.uid);
      },));

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Fund Transfer..!!"),
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
              Navigator.push(context, MaterialPageRoute(builder: (context){
               
                var snapshot;
                return Viewfund(uid:snapshot.data![index]['transaction_id']);
              },)
              );
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
                child: Text("Fund Transfer")),
          ],
        ),
      ),
    );
  }
}
