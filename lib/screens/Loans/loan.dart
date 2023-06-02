import 'package:bank/screens/Loans/Education/EduLoan.dart';
import 'package:bank/screens/Loans/Gold/goldLoan.dart';
import 'package:bank/screens/Loans/home/homeLoan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Personal/personalLoan.dart';
import 'emi.dart';

class Loan extends StatefulWidget {
   Loan({Key? key,required this.uid}) : super(key: key);
var uid;
  @override
  State<Loan> createState() => _LoanState();
}

class _LoanState extends State<Loan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Loans"),
          backgroundColor: Colors.indigo.shade900,
          centerTitle: true,
          leading: Icon(Icons.arrow_back),
          actions: [
            Icon(Icons.home),
          ]
      ),
      body:ListView(
        children: [
          Card(
            child: ListTile(
              title: Text("Home Loan"),
              leading: Icon(Icons.home_outlined,color: Colors.indigo),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>HomeLoan(
                  uid: widget.uid,
                )),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Education Loan"),
              leading: Icon(Icons.school_outlined,color: Colors.indigo),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>EducationLoan(
                  uid: widget.uid
                  ,
                )),
                );
              },

            ),
          ),
          Card(
            child: ListTile(
              title: Text("Gold Loan"),
              leading: Icon(Icons.monetization_on,color: Colors.indigo),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>GoldLoan(
                  uid:widget.uid
                )),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Personal Loan"),
              leading: Icon(Icons.people_alt,color: Colors.indigo),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>PersonalLoan(
                uid: widget.uid,
                )),
                );
              },
            ),
          ),
          // Card(
          //   child: ListTile(
          //     title: Text("EMI Calculator"),
          //     leading: Icon(Icons.percent_outlined,color: Colors.indigo),
          //     trailing: Icon(Icons.arrow_forward_ios_sharp),
          //     onTap: () {
          //       Navigator.push(
          //         context, MaterialPageRoute(builder: (context) =>Emi()),
          //       );
          //     },
          //   ),
          // ),


        ],
      ),

    );
  }
}
