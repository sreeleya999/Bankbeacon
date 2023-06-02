import 'package:bank/screens/Loans/Education/eduReq.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'eduFaq.dart';

// import 'Edcufaq.dart';
// import 'Eduloanrequest.dart';

class EducationLoan extends StatefulWidget {
   EducationLoan({Key? key,required this.uid}) : super(key: key);
var uid;
  @override
  State<EducationLoan> createState() => _EducationLoanState();
}

class _EducationLoanState extends State<EducationLoan> {
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
          Image.asset("assets/edu.png"),
          Card(
            child: ListTile(
              title: Text("FAQ"),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Edufaq()),
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
                  context, MaterialPageRoute(builder: (context) =>EducationRequest(
                  uid: widget.uid,
                  type: 'education',
                )),
                );
              },

            ),
          ),
        ],
      ),
    );


  }
}