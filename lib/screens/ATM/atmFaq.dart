import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Atmfaq extends StatefulWidget {
  const Atmfaq({Key? key}) : super(key: key);

  @override
  State<Atmfaq> createState() => _AtmfaqState();
}

class _AtmfaqState extends State<Atmfaq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("FAQ ATMS"),
          centerTitle: true,
          leading: Icon(Icons.arrow_back),
          actions: [
            Icon(Icons.home),
          ]),
      body: ListView(
        children:const [
          // General information section
           ExpansionTile(
            title: Text('1) What is an Automated Teller Machine (ATM)?'),
            children: [
              ListTile(
                title: Text(
                    'Ans: Automated Teller Machine is a computerised machine that provides the customers of banks the facility of accessing their accounts for dispensing cash and to carry out other financial transactions without the need of actually visiting a bank branch.'),
              ),
            ],
          ),
          // Troubleshooting and problem-solving section
           ExpansionTile(
            title: Text('2) What type of cards can be used at an ATM?'),
            children: [
              ListTile(
                title: Text(
                    'Ans: The ATM cards/debit cards, credit cards and prepaid cards (that permit cash withdrawal) can be used at ATMs for various transactions.'),
              ),
            ],
          ),
          // Troubleshooting and problem-solving section
           ExpansionTile(
            title: Text('3) How can one transact at an ATM?'),
            children: [
              ListTile(
                title: Text(
                    'Ans: For transacting at an ATM, the customer insert (swipe) their card in the ATM and enter their Personal Identification Number (PIN)..'),
              ),
            ],
          ),
           ExpansionTile(
            title: Text(
                '4) Can these cards be used at any bank ATM in the country?'),
            children: [
              ListTile(
                title: Text(
                    'Ans: Yes. The cards issued by banks in India should be enabled for use at any bank ATM within India..'),
              ),
            ],
          ),
           ExpansionTile(
            title: Text(
                '5) What should one do if he forgets PIN or the card is sucked in by the ATM?'),
            children: [
              ListTile(
                title: Text(
                    'Ans: In case the PIN is forgotten, the customer should approach his branch for regeneration of the PIN. In case of loss of the card, the customer may contact the card issuing branch and apply for retrieval / issuance of a new card. This procedure is applicable even if the card is sucked in at another banks ATM.'),
              ),
            ],
          ),
           ExpansionTile(
            title: Text('6) What should be done if the card is lost / stolen?'),
            children: [
              ListTile(
                title: Text(
                    'Ans: The customer may contact the card issuing bank immediately on noticing the loss so as to enable the bank to block such cards .'),
              ),
            ],
          ),

           ExpansionTile(
            title: Text(
                '7) Is there any minimum and maximum cash withdrawal limit per day?'),
            children: [
              ListTile(
                title: Text(
                    'Ans: Yes, banks set limit for cash withdrawal by customers. The cash withdrawal limit for use at the ATM of the issuing bank is set by the bank during the issuance of the card. This limit is displayed at the respective ATM locations.'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
