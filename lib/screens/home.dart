import 'package:bank/screens/Insurance/insurance.dart';
import 'package:bank/screens/location/location.dart';
import 'package:flutter/material.dart';

import 'ATM/atm.dart';
import 'Account Services/ac.dart';
import 'Help&Feedback/helpdesk.dart';
import 'HolidayCalender/calender.dart';
import 'Loans/loan.dart';
import 'TopUP/recharge.dart';
import 'addaccount/createac.dart';

class Home extends StatefulWidget {
   Home({Key? key,required this.uid}) : super(key: key);
var uid;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor:Colors.indigo.shade900,

            actions: [
              Icon(Icons.person),
            ]
        ),
        body:
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Row(
            //ROW 1
            children: [
        Expanded(
          flex: 1,
          child: Container(
                height: 130,
                width: 130,
                child: InkWell(
                    splashColor: Colors.green,
                    onTap: ()
                    {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Services(
                        uid: widget.uid,
                      )),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.manage_accounts,color: Colors.indigo.shade900,size: 35,), // <-- Icon
                        Text("Account Service",
                          style: TextStyle(color: Colors.black, fontSize: 13,fontFamily: 'timesnewroman',fontStyle: FontStyle.italic),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                ),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey.shade300),
                ),

              ),
        ),
        Expanded(
          flex: 1,
          child: Container(
                height: 130,
                width: 130,
                child: InkWell(
                    splashColor: Colors.green,
                    onTap: ()
                    {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Atm(
                        uid: widget.uid,
                      )),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.library_books,color: Colors.indigo.shade900,size: 35,), // <-- Icon
                        Text("ATM & Debit card",
                          style: TextStyle(color: Colors.black, fontSize: 13,fontFamily: 'timesnewroman',fontStyle: FontStyle.italic),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                ),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey.shade300),
                ),

              ),
        ),
        Expanded(
            flex: 1,
            child: Container(
              height: 130,
                width: 130,
                child: InkWell(
                    splashColor: Colors.green,
                    onTap: ()
                    {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Rechar(
                        uid:widget.uid
                      )),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.phone_iphone,color: Colors.indigo.shade900,size: 35,), // <-- Icon
                        Text("Mobile Topup",
                            style: TextStyle(color: Colors.black, fontSize:13,fontFamily: 'timesnewroman',fontStyle: FontStyle.italic),
                          textAlign: TextAlign.center,

                ),
                      ],
                    )
                ),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey.shade300
                  ),
                ),
            )
        ),
            ],
          ),
          Row(//ROW 2
              children: [
          Expanded(
          flex: 1,
          child: Container(
                  height: 130,
                  width: 130,
                  child: InkWell(
                      splashColor: Colors.green,
                      onTap: ()
                      {
                        Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Loan(
                          uid: widget.uid,
                        )),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.currency_rupee_rounded,color: Colors.indigo.shade900,size: 35,), // <-- Icon
                          Text("Loans",
                            style: TextStyle(color: Colors.black, fontSize: 13,fontFamily: 'timesnewroman',fontStyle: FontStyle.italic),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                  ),
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey.shade300),
                  ),
                ),
          ),
    Expanded(
    flex: 1,
    child: Container(

                  height: 130,
                  width: 130,
                  child: InkWell(
                      splashColor: Colors.green,
                      onTap: ()
                      {
                        Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Insurance(
                          uid:widget.uid
                        )),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.handshake_outlined,color: Colors.indigo.shade900,size: 35,), // <-- Icon
                          Text("Insurance",
                            style: TextStyle(color: Colors.black, fontSize: 13,fontFamily: 'timesnewroman',fontStyle: FontStyle.italic),
                          ),

                        ],
                      )
                  ),
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey.shade300),
                  ),
                ),
    ),
                Container(
                  height: 130,
                  width: 120, child: InkWell(
                    splashColor: Colors.green,
                    onTap: ()
                    {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) =>Helpdesk(
                        uid: widget.uid,
                      )),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.headset_mic_sharp,color: Colors.indigo.shade900,size: 35,), // <-- Icon
                        Text("Helpdesk & Feedback",
                        style: TextStyle(color: Colors.black, fontSize: 13,fontFamily: 'timesnewroman',fontStyle: FontStyle.italic),
                        ),
                      ],
                    )
                ),
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey.shade300),
                  ),

    ),
              ]),
              Row(//ROW 2
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 130,
                        width: 130,
                        child: InkWell(
                            splashColor: Colors.green,
                            onTap: ()
                            {
                              Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Createac(
                                uid: widget.uid,
                              )),
                              );
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.account_balance_rounded,color: Colors.indigo.shade900,size: 35,), // <-- Icon
                                Text("Add Account",
                                  style: TextStyle(color: Colors.black, fontSize:13,fontFamily: 'timesnewroman',fontStyle: FontStyle.italic),
                                ),
                              ],
                            )
                        ),
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey.shade300),
                        ),
                      ),
                    ),





    Expanded(
    flex: 1,
    child: Container(

                  height: 130,
                  width: 130,
                  child: InkWell(
                      splashColor: Colors.green,
                      onTap: ()
                      {
                        Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Locations()),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.location_on,color: Colors.indigo.shade900,size: 35,), // <-- Icon
                          Text("Locator",
                            style: TextStyle(color: Colors.black, fontSize:13,fontFamily: 'timesnewroman',fontStyle: FontStyle.italic),
                          ),
                        ],
                      )
                  ),
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey.shade300),
                  ),
                ),
    ),
                    Expanded(
                      flex: 1,
                      child: Container(

                        height: 130,
                        width: 130,
                        child: InkWell(
                            splashColor: Colors.green,
                            onTap: ()
                            {
                              Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Calender()),
                              );
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.calendar_month,color: Colors.indigo.shade900,size: 35,), // <-- Icon
                                Text("Holiday Calender",
                                  style: TextStyle(color: Colors.black, fontSize: 13,fontFamily: 'timesnewroman',fontStyle: FontStyle.italic),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            )
                        ),
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey.shade300),
                        ),
                      )
                    ),

              ]),
        ]));
  }
}
