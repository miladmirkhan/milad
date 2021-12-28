import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class privacyPolicy extends StatelessWidget {
  const privacyPolicy({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  leading: IconButton(
    icon: Icon(Icons.arrow_back_ios_new, color: Colors.purple[768]),
    onPressed: () => Navigator.of(context).pop(),
  ), 
  title: Text("privacyPolicy"),
  centerTitle: true,
),
body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'privacyPolicy',
              
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.w400),
            ),
            const Text(
              'Thousands of organisations are using our extensive range of UK GDPR documents to assist in their data protection implementation, maintenance and compliance. It is important to understand that choosing the right data protection policy or toolkit is not soley related to the size or scope of your organisation. Firms should be considering the type, format, volume and content of the personal data being processed, as well as assessing the existing measures and controls already in place.',
              
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
           ])
           )
            );
  }
}