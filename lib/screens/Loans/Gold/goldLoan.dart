import 'package:bank/screens/Loans/Gold/goldFaq.dart';
import 'package:bank/screens/Loans/Gold/goldReq.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'Goldloanrequest.dart';
// import 'goldloanfeatures.dart';

class GoldLoan extends StatefulWidget {
   GoldLoan({Key? key,required   this.uid}) : super(key: key);
var uid;
  @override
  State<GoldLoan> createState() => _GoldLoanState();
}

class _GoldLoanState extends State<GoldLoan> {
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
          Image.asset("assets/gold.jpg"),
          Card(
            child: ListTile(
              title: Text("Features"),

              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>GoldFaq(uid: widget.uid)),
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
                  context, MaterialPageRoute(builder: (context) =>GoldReq(uid: widget.uid,type: 'gold',)),
                );
              },

            ),
          ),
        ],
      ),
    );

  }
}
