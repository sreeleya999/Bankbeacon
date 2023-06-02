import 'package:bank/screens/Help&Feedback/securityTips.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'feedback.dart';

class Helpdesk extends StatefulWidget {
   Helpdesk({Key? key,required this.uid}) : super(key: key);
  var uid;
  @override
  State<Helpdesk> createState() => _HelpdeskState();
}

class _HelpdeskState extends State<Helpdesk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Helpdesk and Feedback"),
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
              onTap:  (){
                Uri launchUri = Uri(scheme: 'tel', path: '9874562141');
                launchUrl(launchUri);

              } ,
              title: Text("Helpline"),
              leading: Icon(Icons.wifi_calling_3,color: Colors.indigo,),



              trailing: Icon(Icons.arrow_forward_ios_sharp,),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Security Tips"),
              leading: Icon(Icons.check_circle_outline,color: Colors.indigo,),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>Securitytips()),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Feedback"),
              leading: Icon(Icons.picture_in_picture_alt_outlined,color: Colors.indigo,),
              trailing: Icon(Icons.arrow_forward_ios_sharp),

              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>Feedbacks(
                  uid: widget.uid,
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
