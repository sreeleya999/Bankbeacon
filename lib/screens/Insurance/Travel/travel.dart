import 'package:bank/screens/Insurance/insuranceRequest.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TravelInsurance extends StatefulWidget {
   TravelInsurance({Key? key,required this.uid}) : super(key: key);
var uid;
  @override
  State<TravelInsurance> createState() => _TravelInsuranceState();
}

class _TravelInsuranceState extends State<TravelInsurance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Travel Insurance"),
        backgroundColor: Colors.indigo.shade900,
        centerTitle: true,
      ),
      body:ListView(
        children: [
          Image.asset("assets/travel.jpg"),
          ListTile(
            title:SizedBox(
              width: 300,
              height: 150,
              child: Text('Travel Insurance provides utmost protection against unseen medical and non-medical emergencies. Additionally, any traveler below 70 years of age need not undergo the medical check-ups. Assistance will be provided for your loved ones at home..'),
            ),
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>InsuranceRequest(
              uid:widget.uid,type:'Travel'
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
