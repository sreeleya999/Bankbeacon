import 'package:bank/screens/Help&Feedback/complaint.dart';
import 'package:bank/screens/Help&Feedback/sendFeedBack.dart';
import 'package:bank/screens/Help&Feedback/tracking.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Feedbacks extends StatefulWidget {
   Feedbacks({Key? key,required this.uid}) : super(key: key);
  var uid;
  @override
  State<Feedbacks> createState() => _FeedbacksState();
}

class _FeedbacksState extends State<Feedbacks> {
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
          Card(
            child: ListTile(
              title: Text("Feedback"),

              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SendFeedback(
                  uid: widget.uid,
                )),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Complaints"),

              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Complaints(
                  uid: widget.uid,
                )),
                );
              },
            ),
          ),


          Card(
            child: ListTile(
              title: Text("Tracking"),

              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>Trackings(
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
