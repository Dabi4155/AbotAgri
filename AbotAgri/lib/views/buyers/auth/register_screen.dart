import 'package:flutter/material.dart';
import 'package:testapp1/views/buyers/auth/login_screen.dart';

class RegisterScreen extends StatelessWidget{
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Create Customer Account',
              style: TextStyle(fontSize: 20),
            ),


            CircleAvatar(
              radius: 64,
              backgroundColor: const Color.fromARGB(255, 21, 148, 25), 
            ),

            Padding(
              padding: const EdgeInsets.all(13.0),
              child: TextFormField(decoration: InputDecoration(
                labelText: 'Enter email',
              ),),
            ),

            Padding(
              padding: const EdgeInsets.all(13.0),
              child: TextFormField(decoration: InputDecoration(
                labelText: 'Enter Name',
              ),),
            ),

            Padding(
              padding: const EdgeInsets.all(13.0),
              child: TextFormField(decoration: InputDecoration(
                labelText: 'Enter Phone Number',
              ),),
            ),

            Padding(
              padding: const EdgeInsets.all(13.0),
              child: TextFormField(decoration: InputDecoration(
                labelText: 'Enter Password',
              ),),
            ),

            Container(
              width: MediaQuery.of(context).size.width -40,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.green.shade900,
                borderRadius: BorderRadius.circular(10),
              ),

              child: Center(
                  child: Text(
                'Register',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  letterSpacing: 4,
                ),
              )),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?'),
                TextButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }));
                  },
                  child: Text('Login'),
                ), 
              ],
            )
          ],
        ),
      ),
    );
  }
}