import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../connect/connect.dart';

class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  var flag;
  Future<dynamic> getData() async {


    var response=await get(Uri.parse('${Con.url}calender.php'));
    print(response.body);
    print(response.statusCode);
    if(jsonDecode(response.body)[0]['result']=='success'){
      flag=1;
      return jsonDecode(response.body);
      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Loan Request Send successfully  ...")));
      // Navigator.pop(context);
    }else
    {
      flag=0;
      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed to Send Request  ...")));
      // Navigator.pop(context);
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Holiday Calender"),
        backgroundColor: Colors.indigo.shade900,

        centerTitle: true,
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if(snapshot.hasError)print('Error:${snapshot.error}');
          print('Inside calender list: ${snapshot.hasData}');
          if(!snapshot.hasData)  {
            return const Center(child: Text('No Data..'),);

          }
          return flag==0?Center(child: Text('Nothing to show..'),):

            ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Week :${snapshot.data[index]['week']}'),
                      Text('Date :${snapshot.data[index]['day']}-${snapshot.data[index]['month']}-${snapshot.data[index]['year']}'),
                      Text('Event :${snapshot.data[index]['event']}'),
                    ],
                  ),
                ),
              );
            },
          );
        }
      ),
    );
  }
}
