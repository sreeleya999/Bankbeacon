import 'package:bank/screens/Account%20Services/deposit.dart';
import 'package:bank/screens/Account%20Services/fund.dart';
import 'package:bank/screens/Account%20Services/meet.dart';
import 'package:bank/screens/Account%20Services/withdraw.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Services extends StatefulWidget {
   Services({Key? key,required this.uid}) : super(key: key);
var uid;
  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Account Services"),
          backgroundColor:Colors.indigo.shade900,
          centerTitle: true,
          actions: [
            Icon(Icons.home),
          ]
      ),
      body:ListView(
        children: [
          Card(
            child: ListTile(
              title: Text("Balance Enquiry"),
              leading: Icon(Icons.library_books_outlined,color: Colors.indigo,),
              trailing:Wrap(
                spacing:12,
                children:[
                  IconButton(onPressed: (){
                    Uri launchUri = Uri(scheme: 'tel', path: '9874562141');
                    launchUrl(launchUri);


                  }, icon:Icon(Icons.call,color: Colors.indigo,),),
                  IconButton(onPressed: (){
                    Uri launchUri = Uri(scheme: 'sms', path: '9874562141');
                    launchUrl(launchUri);


                  }, icon:Icon(Icons.message_outlined,color: Colors.indigo,),),



                ],
              ),
            ),
          ),
          Card(
            child: ListTile(

                title: Text("Ministatement"),
                leading: Icon(Icons.book,color: Colors.indigo,),
                trailing:Wrap(
                  spacing:12,
                  children:[
                    IconButton(onPressed: (){
                      Uri launchUri = Uri(scheme: 'tel', path: '9874562141');
                      launchUrl(launchUri);


                    }, icon:Icon(Icons.call,color: Colors.indigo,),),
                    IconButton(onPressed: (){
                      Uri launchUri = Uri(scheme: 'sms', path: '9874562141');
                      launchUrl(launchUri);


                    }, icon:Icon(Icons.message_outlined,color: Colors.indigo,),),

                    // Icon(Icons.call,color: Colors.indigo,),
                    // Icon(Icons.message_outlined,color: Colors.indigo,),
                  ],
                )

            ),
          ),
          Card(
            child: ListTile(
              title: Text("Cheque book request"),
              leading: Icon(Icons.book,color: Colors.indigo,),
              trailing:
              IconButton(onPressed: (){
                Uri launchUri = Uri(scheme: 'sms', path: '9075421010');
                launchUrl(launchUri);


              }, icon:Icon(Icons.message_outlined,color: Colors.indigo,),),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Fund Transfer"),
              leading: Icon(Icons.money_outlined,color: Colors.indigo,),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FundTransfer(
                  uid:widget.uid
                )),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Meet Manager"),
              leading: Icon(Icons.meeting_room,color: Colors.indigo,),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MeetManager(uid: widget.uid ,)),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Withdrawal"),
              leading: Icon(Icons.monetization_on_outlined,color: Colors.indigo,),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Withdrawal(
                  uid:widget.uid
                )),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Deposit"),
              leading: Icon(Icons.money,color: Colors.indigo,),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Deposit(
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
