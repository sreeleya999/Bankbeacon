
import 'package:flutter/material.dart';

class Edufaq extends StatefulWidget {
  const Edufaq({Key? key}) : super(key: key);

  @override
  State<Edufaq> createState() => _EdufaqState();
}

class _EdufaqState extends State<Edufaq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("FAQ Education Loan"),
          centerTitle: true,
          leading: Icon(Icons.arrow_back),
          actions: [
            Icon(Icons.home),
          ]
      ),
      body:ListView(
        children: [
          // General information section
          const ExpansionTile(
            title: Text('Q.What are the important documents that I need to provide?'),
            children: [
              ListTile(
                title: Text('You will need to furnish the following documents along with the completed application form. Relevant information would relate to the guardian and the student both, when the loan is jointly taken.'),
              ),
            ],
          ),
          const ExpansionTile(
            title: Text('Q.Are there any charges or processing fee?'),
            children: [
              ListTile(
                title: Text('There is no additional charge or processing fee for education loans upto ? 20 lakhs. For loans above ? 20 lakhs, processing fee of ? 10,000 + GST is applicable.'),
              ),
            ],
          ),
          const ExpansionTile(
            title: Text('Q.Since there is a moratorium period, how will my repayments be determined?'),
            children: [
              ListTile(
                title: Text('The oustanding interest  for the moratorium period will be added to the loan amont at the time of commencement of the replayment.The EMI will be determined on this amount at the time the repayment is to commence.'),
              ),
            ],
          ),
          const ExpansionTile(
            title: Text('Q.What is EMI?How it is calculated?'),
            children: [
              ListTile(
                title: Text('EMI stands for Equated Monthly Instalments. This instalment comprises both principal and interest components. Your EMI would be calculated depending on the tenor you choose, to repay your loan. The EMI would be higher if you choose to repay within a shorter period as against a longer-term loan. A shorter repayment period, however, reduces your interest cost over the term of the loan.'),
              ),
            ],
          ),
          const ExpansionTile(
            title: Text('Q.What is the repayment schedule like?'),
            children: [
              ListTile(
                title: Text('The repayment would begin one year after the course period or six months after you get a job, whichever is earlier. You are expected to pay a minimum amount equivalent to the EMI on a monthly basis. However, you can choose to pay more than the EMI, and we do not charge any prepayment penalty.'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
