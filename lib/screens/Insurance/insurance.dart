import 'package:bank/screens/Insurance/Health/health.dart';
import 'package:bank/screens/Insurance/Vehicle/vehicle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Life/life.dart';
import 'Travel/travel.dart';

// import 'Healthinsureclick.dart';
// import 'Lifeinsuranceclick.dart';
// import 'Travelinsuranceclick.dart';

class Insurance extends StatefulWidget {
   Insurance({Key? key,required this.uid}) : super(key: key);
var uid;
  @override
  State<Insurance> createState() => _InsuranceState();
}

class _InsuranceState extends State<Insurance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Insurance"),
          backgroundColor: Colors.indigo.shade900,
          centerTitle: true,

          actions: [
            Icon(Icons.home),
          ]
      ),
      body:ListView(
        children: [
          Card(
            child: ListTile(
              title: Text("Health Insurance"),
              leading: Icon(Icons.local_hospital,color: Colors.indigo),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>HealthInsurance(
                  uid:widget.uid
                )),
                );
              },
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Life Insurance"),
              leading: Icon(Icons.person,color: Colors.indigo),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>LifeInsurance(
                  uid:widget.uid
                )),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Travel Insurance"),
              leading: Icon(Icons.travel_explore_outlined,color: Colors.indigo),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>TravelInsurance(
                  uid:widget.uid
                )),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Vechile Insurance"),
              leading: Icon(Icons.car_crash,color: Colors.indigo),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>VechileInsurance(
                  uid:widget.uid
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
