import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../connect/connect.dart';

class Rechar extends StatefulWidget {
   Rechar({Key? key,required this.uid}) : super(key: key);
var uid;
  @override
  State<Rechar> createState() => _RecharState();
}

class _RecharState extends State<Rechar> {
  final List = ['AIRTEL', 'BSNL', 'JIO', 'VI'];
  var selectOperator = TextEditingController();
  var enterAmount = TextEditingController();
  var mobile = TextEditingController();
  Future<void> sendData() async {
    var data={
      "operator":selectOperator.text,
      "amount":enterAmount.text,
      "mobile":mobile.text,
      "uid":widget.uid,
    };

    var response=await post(Uri.parse('${Con.url}recharge.php'),body: data);
    print(response.body);
    print(response.statusCode);
    if(jsonDecode(response.body)['result']=='success'){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Loan Request Send successfully  ...")));
      Navigator.pop(context);
    }else
    {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Failed to Send Request  ...")));
      Navigator.pop(context);
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile Topup/Recharge"),
        backgroundColor: Colors.indigo.shade900,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: mobile,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  labelText: "Enter your mobile number with ISD code",
                  hintText: "Mobile",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: DropdownButtonFormField(
                  hint: const Text('Select Operator'),
                  items: List.map((e) {
                    return DropdownMenuItem(value: e, child: Text(e));
                  }).toList(),
                  onChanged: (value) {}),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: enterAmount,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "Enter Amount",
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (enterAmount.text.isNotEmpty &&
                      mobile.text.isNotEmpty &&
                      selectOperator!='') {
                    if (mobile.text.length == 10) {
                      sendData();
                      setState(() {});
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Enter a valid mobile number...")));
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("All Fields Required ...")));
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.indigo.shade900,
                ),
                child: const Text("Submit")),
            const SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.indigo.shade900,
                ),
                child: const Text("Cancel")),
          ],
        ),
      ),
    );
  }
}
