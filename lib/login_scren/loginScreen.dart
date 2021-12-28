import 'package:flutter/material.dart';
import 'package:milad/app.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('Welcome',style:TextStyle(fontSize: 45, fontWeight: FontWeight.w400) ,),
          Form(
              child: Column(
            children: [
              //user name
              TextFormField(
                keyboardType: TextInputType.emailAddress,
              ),

              //passsword
              TextFormField(
                obscureText: true,
              ),
              Text(" "),
              ElevatedButton.icon(
                onPressed: () {
                 Navigator.pushNamed(context, '/dataScreen');
                },
                icon: Icon(
                  Icons.login,
                ),
                label: Text('Log in'),
              ),
              SizedBox(
                height: 50,
              ),

             TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signIn');
                  },
                  child: Text('sign in')),
              
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/privacyPolicy');
                  },
                  child: Text('Privacy Policy'))
            ],
          ))
        ],
      ),
    );
  }
}
