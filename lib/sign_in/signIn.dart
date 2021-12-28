import 'package:flutter/material.dart';

class signIn extends StatelessWidget {
  const signIn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child:Column(
        children: [
          Text("sign Up",
          style: TextStyle(fontSize: 45, fontWeight: FontWeight.w400),
          ),
            TextFormField(keyboardType: TextInputType.name,),
                TextFormField(keyboardType: TextInputType.name,),

              TextFormField(keyboardType: TextInputType.emailAddress, ),
              TextFormField( keyboardType: TextInputType.phone,),

               TextFormField(  obscureText: true, ),
               TextFormField(  obscureText: true, ),
Text(" "),
           ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/dataScreen');
                },
                icon: Icon(
                  Icons.sailing
                ),
                label: Text('sign Up'),
              ),
              Text(" "),
            Text('if you have an account you can just Log In',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200)
            ),
            TextButton(
            autofocus: true,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                child: Text('log in')),
        ],
      ),
    )
    );
      
    
  }
}