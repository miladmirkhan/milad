import 'package:flutter/material.dart';

class homeApp extends StatelessWidget {
  const homeApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to MyApp',
              
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.w400),
            ),
            
            ElevatedButton(
            autofocus: true,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                child: Text('login Screen')),
                
                TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/privacyPolicy');
                },
                child: Text('Privacy Policy'))
          ],
        ),
      ),
    );
  }

  // String wait3Seconds(){
  //   // await Future.delayed(Duration(seconds: 3));
  //   return 'value recieved';
  // }
}

