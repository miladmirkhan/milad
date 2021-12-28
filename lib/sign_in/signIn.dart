import 'package:flutter/material.dart';

class signIn extends StatelessWidget {
  const signIn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("sign Up",
          style: TextStyle(fontSize: 45, fontWeight: FontWeight.w400),
            ),
           ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/dataScreen');
                },
                icon: Icon(
                  Icons.login,
                ),
                label: Text('sign Up'),
              ),

              TextButton(
            autofocus: true,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                child: Text('login Screen')),
        ],
      ),
    );
      
    
  }
}