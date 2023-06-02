import 'package:bank/screens/Loans/Personal/personalFaq.dart';
import 'package:bank/screens/Loans/Personal/personalReq.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalLoan extends StatefulWidget {
   PersonalLoan({Key? key,required this.uid}) : super(key: key);
var uid;
  @override
  State<PersonalLoan> createState() => _PersonalLoanState();
}

class _PersonalLoanState extends State<PersonalLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.indigo.shade900,
          actions: [
            Icon(Icons.home),
          ]
      ),
      body:ListView(
        children: [
          Image.asset("assets/personal.jpg"),
          Card(
            child: ListTile(
              title: Text("Features"),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>Personalfaq(
                  uid: widget.uid,
                )),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Loan Request"),
              trailing:Wrap(
                spacing:12,
                children:[
                  Icon(Icons.help_outline_outlined,color: Colors.indigo,),
                  Icon(Icons.call_outlined,color: Colors.indigo,),
                  Icon(Icons.message_outlined,color: Colors.indigo,),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>PersonalRequest(type:'personal',uid: widget.uid,)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


