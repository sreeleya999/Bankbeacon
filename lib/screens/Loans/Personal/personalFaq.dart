import 'package:bank/screens/Loans/Personal/personalReq.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Personalfaq extends StatefulWidget {
   Personalfaq({Key? key,required this.uid}) : super(key: key);
var uid;
  @override
  State<Personalfaq> createState() => _PersonalfaqState();
}

class _PersonalfaqState extends State<Personalfaq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Features"),
          backgroundColor: Colors.indigo.shade900,
          centerTitle: true,
          leading: Icon(Icons.arrow_back),
          actions: [
            Icon(Icons.home),
          ]
      ),
      body:
      ListView(
        children: [
          ListTile(

            title: Text('- Loan up to 30 lakhs.'),
          ),
          ListTile(

            title: Text('- Interest on daily reducing balance.'),
          ),
          ListTile(

            title: Text('- Low processing charges.'),
          ),
          ListTile(

            title: Text('- Minimal documentation.'),
          ),
          ListTile(

            title: Text('- Zero hidden costs.'),
          ),
          ListTile(
            title: Text('- Provision for second Loan.'),
          ),
          ListTile(
            title: Text('- No security, no guarantor.'),
          ),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalRequest(
                uid: widget.uid,type: 'personal')),
            );
          },style: ElevatedButton.styleFrom(
            primary: Colors.indigo.shade900,
          ),
              child: Text("Apply Now")),

        ],
      ),
    );
  }
}
