// import 'package:bank/screens/vechilerequest.dart';
import 'package:flutter/material.dart';

import '../insuranceRequest.dart';

class VechileInsurance extends StatefulWidget {
   VechileInsurance({Key? key,required this.uid}) : super(key: key);
var uid;
  @override
  State<VechileInsurance> createState() => _VechileInsuranceState();
}

class _VechileInsuranceState extends State<VechileInsurance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vechile Insurance"),
        backgroundColor: Colors.indigo.shade900,
        centerTitle: true,
      ),
      body:ListView(
        children: [
          Image.asset("assets/vechile.png"),
          ListTile(
            title:SizedBox(
              width: 300,
              height: 150,
              child: Text('The rising levels of stress and increasing cost of healthcare means that a major illness is always on the cards and so is the financial burden. Alleviate this burden by going in for our ICICI Lombard Group Health Insurance plan.'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Documents Required"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Claim form filled-in and signed"),
              leading: Icon(Icons.book_outlined,color: Colors.indigo),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("A copy of your Vehicles R.C. Book"),
              leading: Icon(Icons.download_for_offline_outlined,color:Colors.indigo),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("copy of the Driving License of the person driving at the time of accidentk"),
              leading: Icon(Icons.bookmark_added_rounded,color:Colors.indigo),
            ),
          ),


          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>InsuranceRequest(
              uid:widget.uid,type:'Vehicle'
            )),
            );
          },style: ElevatedButton.styleFrom(
            primary: Colors.indigo.shade900,
          ),
              child: Text("Apply Now",)),
        ],
      ),
    );
  }
}
