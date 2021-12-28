import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class dataScreen extends StatelessWidget {
  const dataScreen({Key? key})
      : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: FutureBuilder<List<dynamic>>(
            future: getUsers(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                //  todo: show a loading widget
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                // show an error
                return Text(snapshot.error.toString());
              } else {
                //show the data
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      int indexe=index+1;
                      return  Text("your  titels $indexe: "+snapshot.data![index]);
                    });
              }
            },
          ),
        )
        );
  }

  Future<List<dynamic>> getUsers() async {
    //the end point url
    String theUrl = "https://jsonplaceholder.typicode.com/albums";

    // wait and revieve a response from the endpoint
    http.Response response = await http.get(Uri.parse(theUrl));

    // decode the json body to a list<dynamic>
    List decodedJson = jsonDecode(response.body);

    // return a list of strings from the list<dynamic> we had
    return decodedJson.map((e) => e["title"]).toList();
  }

}