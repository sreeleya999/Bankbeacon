import 'package:flutter/material.dart';

class Securitytips extends StatefulWidget {
  const Securitytips({Key? key}) : super(key: key);

  @override
  State<Securitytips> createState() => _SecuritytipsState();
}

class _SecuritytipsState extends State<Securitytips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Cyber Security Tips"),
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
          Card(
            child: ListTile(
              title: Text("Do's on Security",
      style: TextStyle(color: Colors.black, fontSize: 25,fontFamily: 'cursive',fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
            ),
          ),
          ListTile(
            leading: Icon(Icons.arrow_forward_ios,size:15, color: Colors.black),
            title: Text('Be careful while entering important Banking credentials in public places to avoid shoulder surfing..'),
          ),
          ListTile(
            leading: Icon(Icons.arrow_forward_ios,size: 15,color: Colors.black),
            title: Text('Keep your mobile phones locked to avoid unwanted access to your data. In case of loss of mobile, please block your mobile number immediately..'),
          ),
          ListTile(
            leading: Icon(Icons.arrow_forward_ios,size: 15,color: Colors.black),
            title: Text('Always log out of online accounts or banking applications when you are done with all transactions..'),
          ),
          ListTile(
            leading: Icon(Icons.arrow_forward_ios,size: 15,color: Colors.black),
            title: Text('Report all suspicious activity and cyber incidents to the Bank at the earliest to avoid possible frauds and for Bank to take necessary action. Keep Customer helpline number, email IDs handy. .'),
          ),
          ListTile(
            leading: Icon(Icons.arrow_forward_ios,size: 15,color: Colors.black),
            title: Text('Ensure that the address bar displays the padlock symbol. '),
          ),
          ListTile(
            leading: Icon(Icons.arrow_forward_ios,size: 15,color: Colors.black),
            title: Text('-Click the padlock to view and verify the security certificate.'),
          ),
          Card(
            child: ListTile(
              title: Text("Dont's on Cyber Security",
              style: TextStyle(color: Colors.black, fontSize: 25,fontFamily: 'cursive',fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
            ),
          ),
          ListTile(
            leading: Icon(Icons.arrow_forward_ios,size: 15,color: Colors.black),
            title: Text('Never respond to any communication seeking your User ID, Password, mPIN, OTP etc. through any medium like SMS, Emails or calls. .'),
          ),
          ListTile(
            leading: Icon(Icons.arrow_forward_ios,size: 15,color: Colors.black),
            title: Text('Never reveal your passwords or card details to anyone (State Bank or any of its representative never sends you email/SMS or calls you over phone to get your personal information, password or one-time SMS (high security) password). .'),
          ),
          ListTile(
            leading: Icon(Icons.arrow_forward_ios,size: 15,color: Colors.black),
            title: Text('Do not share your debit card details and expiry date with anyone, Bank never asks such details..'),
          ),
          ListTile(
            leading: Icon(Icons.arrow_forward_ios,size: 15,color: Colors.black),
            title: Text('Don’t use public shared Wi-Fi network while using your Mobile Banking application or doing any financial transactions as public networks are inherently insecure..'),
          ),
        ],
      ),
    );
  }
}
