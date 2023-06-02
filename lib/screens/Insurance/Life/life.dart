import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../insuranceRequest.dart';

class LifeInsurance extends StatefulWidget {
   LifeInsurance({Key? key,required this.uid}) : super(key: key);
var uid;
  @override
  State<LifeInsurance> createState() => _LifeInsuranceState();
}

class _LifeInsuranceState extends State<LifeInsurance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Life Insurance"),
        backgroundColor: Colors.indigo.shade900,
        centerTitle: true,
      ),
      body:ListView(
        children: [
          Image.asset("assets/lifein.jpg"),
          ListTile(
            title:SizedBox(
              width: 150,
              height: 150,
              child: Text('The rising levels of stress and increasing cost of healthcare means that a major illness is always on the cards and so is the financial burden. Alleviate this burden by going in for our ICICI Lombard Group Health Insurance plan.'),
            ),
          ),


          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>InsuranceRequest(
              uid:widget.uid,type:'Life'
            )),
            );
          }, style: ElevatedButton.styleFrom(
            primary: Colors.indigo.shade900,
          ),
              child: Text("Apply Now",)),
        ],
      ),

    );

  }
}
