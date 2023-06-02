import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../connect/connect.dart';

class Viewfund extends StatefulWidget {
  Viewfund({super.key, required this.uid});
  String uid;
  @override
  State<Viewfund> createState() => _ViewfundState();
}

class _ViewfundState extends State<Viewfund> {

  Future<dynamic>getData()async{
    var data = {
      "uid":widget.uid
    };
print(data);
    var response=await post(Uri.parse('${Con.url}viewfund.php'),body: data);
    print('----------------${response.body}');

      return jsonDecode(response.body);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fund Transfer"),
        backgroundColor: Colors.indigo.shade900,

        centerTitle: true,
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if(snapshot.hasError)print('Error:${snapshot.error}');
            print('fund transfer: ${snapshot.hasData}');
            if(!snapshot.hasData)  {
              return const Center(child: Text('No Data..'),);

            }

            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Account Number :${snapshot.data[index]['account_no']}'),
                        Text('Amount :${snapshot.data[index]['amount']}'),
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
