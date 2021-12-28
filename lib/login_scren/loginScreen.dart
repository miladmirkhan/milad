import 'package:flutter/material.dart';
import 'package:milad/app.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  String name = 'user name';
  String? password;

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('Welcome $name'),
          Form(
              child: Column(
            children: [
              //user name
              TextFormField(
                controller: userNameController,
                keyboardType: TextInputType.emailAddress,
              ),

              //passsword
              TextFormField(
                controller: passwordController,
                obscureText: true,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    name = userNameController.value.text;
                    password = passwordController.value.text;
                  });
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
