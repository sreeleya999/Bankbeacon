import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'goldReq.dart';


class GoldFaq extends StatefulWidget {
   GoldFaq({Key? key,required this.uid}) : super(key: key);
var uid;
  @override
  State<GoldFaq> createState() => _GoldFaqState();
}

class _GoldFaqState extends State<GoldFaq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feature"),
        centerTitle: true,
      ),
      body:
      ListView(
        children: [
          ListTile(

            title: Text('- Maximum Loan Amount : Rs 50.00 lacs.'),
          ),
          ListTile(

            title: Text('- Minimum Loan Amount : Rs 20,000 /-.'),
          ),
          ListTile(

            title: Text('- Gold Loan (EMI based): 25%.'),
          ),
          ListTile(

            title: Text('- Security : Pledge of gold ornaments duly verified for quality & quantity.'),
          ),
          ListTile(

            title: Text('- Processing Fees: Nil (Till 31.03.2023).'),
          ),
          ListTile(
            title: Text('- Others : Gold appraiser charges will be paid by the Applicant..'),
          ),
          ListTile(
            title: Text('- No security, no guarantor.'),
          ),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>GoldReq(uid: widget.uid,type: 'gold',)),
            );
          },
              child: Text("Apply Now")),

        ],
      ),
    );
  }
}
