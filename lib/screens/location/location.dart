import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Locations extends StatefulWidget {
  const Locations({Key? key}) : super(key: key);

  @override
  State<Locations> createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
  String _locationMessage = "";

  void _getCurrentLocation() async {
    final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _locationMessage =
      "Latitude: ${position.latitude}, Longitude: ${position.longitude}";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Current Location"),
        backgroundColor:Colors.indigo.shade900,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _locationMessage,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _getCurrentLocation,
              style: ElevatedButton.styleFrom(
                primary: Colors.indigo.shade900,
              ),
              child: Text("Get Location"),
            ),
          ],
        ),
      ),

    );
  }
}
