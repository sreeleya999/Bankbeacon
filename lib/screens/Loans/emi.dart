// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Emi extends StatefulWidget {
//   const Emi({Key? key}) : super(key: key);
//
//   @override
//   State<Emi> createState() => _EmiState();
// }
//
// class _EmiState extends State<Emi> {
//   var acNo=TextEditingController();
//   var amt=TextEditingController();
//   var mobile=TextEditingController();
//   var email=TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Text("EMI Calculator"),
//           centerTitle: true,
//           actions: [
//             Icon(Icons.home),
//           ]
//       ),
//       body:Center(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: TextField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(0),
//                   ),
//                   labelText: "Loan Amount",
//                   hintText: "Loan Amount...",
//
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: TextField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(0),
//                   ),
//                   labelText: "Rate of Interest (%)",
//                   hintText: "Rate of Interest (%)",
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: TextField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(0),
//                   ),
//                   labelText: "Tenure (In Years)",
//                   hintText: "Tenure (In Years)",
//                 ),
//               ),
//             ),
//
//             ElevatedButton(onPressed: (){
//             }, child: Text("Calculate")),
//           ],
//         ),
//       ),
//
//     );
//   }
// }
