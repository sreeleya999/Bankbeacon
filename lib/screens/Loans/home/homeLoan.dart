
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'homeReq.dart';
import 'homefaq.dart';

class HomeLoan extends StatefulWidget {

   HomeLoan({Key? key,required this.uid}) : super(key: key);
var uid;
  @override
  State<HomeLoan> createState() => _HomeLoanState();
}

class _HomeLoanState extends State<HomeLoan> {



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
          Image.asset("assets/homelo.png"),

          Card(
            child: ListTile(
              title: Text("FAQ"),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>Homefaq()),
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
                  context, MaterialPageRoute(builder: (context) =>Homerequest(
                  uid: widget.uid,type:'home'
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

