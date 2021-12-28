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
            
           ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/dataScreen');
                },
                icon: Icon(
                  Icons.login,
                ),
                label: Text('sign Up'),
              ),

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