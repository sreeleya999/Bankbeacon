
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homefaq extends StatefulWidget {
  const Homefaq({Key? key}) : super(key: key);

  @override
  State<Homefaq> createState() => _HomefaqState();
}

class _HomefaqState extends State<Homefaq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("FAQ Home Loan"),
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
          // General information section
          const ExpansionTile(
            title: Text('Q.What is EBLR'),
            children: [
              ListTile(
                title: Text('EBLR stands for External Benchmark Lending Rate. SBI has adopted Repo Rate as the external benchmark to link its floating rate home loans with effect from 01.10.2019.'),
              ),
            ],
          ),
          // Troubleshooting and problem-solving section
          const ExpansionTile(
            title: Text('Q.Can existing borrowers avail the benefits of the new interest rate?'),
            children: [
              ListTile(
                title: Text('Yes, floating rate home loan borrowers with regular account conduct as on the date of switch over, can be migrated to the new interest rate structure.'),
              ),
            ],
          ),
          // Troubleshooting and problem-solving section
          const ExpansionTile(
            title: Text('Q.What are the charges for migrating to the new structure?'),
            children: [
              ListTile(
                title: Text('One time switch over fee of Rs. 1000/-* + taxes is applicable Conditions apply..'),
              ),
            ],
          ),
          const ExpansionTile(
            title: Text('Q.When will my interest rate change?'),
            children: [
              ListTile(
                title: Text('The Interest Rate reset under EBLR may be done by the Bank from time to time as per Banks extant guidelines in force.'),
              ),
            ],
          ),
          const ExpansionTile(
            title: Text('Q.Is EBLR a home loan new product'),
            children: [
              ListTile(
                title: Text('No. It is a new interest rate structure. All floating rate home loans will have interest rates linked to External Benchmark.'),
              ),
            ],
          ),
          const ExpansionTile(
            title: Text('Q.What is the minimum Loan amount & max loan amount available under insta top up loan?'),
            children: [
              ListTile(
                title: Text('Min. Rs. 50,000, Max Rs. 8,00,000'),
              ),
            ],
          ),
          const ExpansionTile(
            title: Text('Q.How can i konw my home loan eligibility?'),
            children: [
              ListTile(
                title: Text('Your Home Loan Eligibility is communicated in the In-Principle Sanction conveyed during your application on our website or on the YONO App.'),
              ),
            ],
          ),
          const ExpansionTile(
            title: Text('Q.What should be the language of the registration document?'),
            children: [
              ListTile(
                title: Text('The language of the registration document must be the one that is commonly / prominently used in your district. According to Section 19 of the Indian Registration Act, the Registering Officer or the Registrar has the discretionary authority to decline the registration of your document if it is presented in a language which is not commonly used in the district, unless and until it is accompanied with the authentic translation of the language in use'),
              ),
            ],
          ),
          const ExpansionTile(
            title: Text('Q.what is the power of Attorney?'),
            children: [
              ListTile(
                title: Text('There are two types of power of attorney.First, the General Power of Attorney where a property owner confers general rights. The rights include but are not limited to sell, lease, sub-lease etc. The second one is the Special Power of Attorney where in only a specific right is given by the owner to the chosen person.'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
