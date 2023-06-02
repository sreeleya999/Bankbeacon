import 'package:bank/screens/ATM/atmBlocker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'atmFaq.dart';
import 'greenpin.dart';

// import 'Atmblocker.dart';
// import 'Atmfaq.dart';
// import 'greenpin.dart';
//
class Atm extends StatefulWidget {
   Atm({Key? key,required this.uid}) : super(key: key);
var uid;
  @override
  State<Atm> createState() => _AtmState();
}

class _AtmState extends State<Atm> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("ATM cum Debit Card"),
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
              title: Text("ATM Card Blocking"),
              leading: Icon(Icons.atm_sharp,color: Colors.indigo,),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>Atmblock(
                  uid: widget.uid,
                )),
                );
              },
            ),
          ),


          Card(
            child: ListTile(
              title: Text("Generate Green Pin"),
              leading: Icon(Icons.keyboard_alt_outlined,color: Colors.indigo,),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>Greenpin(
                  uid: widget.uid,
                )),
                );
              },
            ),
          ),

          Card(
            child: ListTile(
              title: Text("About ATM Card"),
              leading: Icon(Icons.picture_in_picture_alt_outlined,color: Colors.indigo,),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>Atmfaq()),
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}

