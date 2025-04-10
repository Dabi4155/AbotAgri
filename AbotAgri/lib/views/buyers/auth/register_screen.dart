import 'package:flutter/material.dart';
import 'package:testapp1/controller/auth_controller.dart';
import 'package:testapp1/utils/show_snackBar.dart';
import 'package:testapp1/views/buyers/auth/login_screen.dart';

class RegisterScreen extends StatefulWidget{

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final AuthController _authController = AuthController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); 

  late String email;

  late String fullName;

  late String phoneNumber;

  late String password;

  _signUpUser()async{
    if(_formKey.currentState!.validate()){
      await _authController.signUpUSers(
        email, fullName, phoneNumber, password);

      return showSnack(context, 'Account has been created');
    }else{
      return showSnack(context, 'Please fill all the fields');
    }

  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                  child: TextFormField(
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Please enter your email';
                      }else{
                        return null;
                      }
                    },
                    onChanged: (value){
                      email = value;
                    },
                    decoration: InputDecoration(
                    labelText: 'Enter email',
                  ),),
                ),
            
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: TextFormField(
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Please enter your full name';
                      }else{
                        return null;
                      }
                    },
                     onChanged: (value){
                      fullName = value;
                    },
                    decoration: InputDecoration(
                    labelText: 'Enter Name',
                  ),),
                ),
            
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: TextFormField(
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Please enter your phone number';
                      }else{
                        return null;
                      }
                    },
                     onChanged: (value){
                      phoneNumber = value;
                    },
                    decoration: InputDecoration(
                    labelText: 'Enter Phone Number',
                  ),),
                ),
            
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: TextFormField(
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Please enter your password';
                      }else{
                        return null;
                      }
                    },
                     onChanged: (value){
                      password = value;
                    },
                    decoration: InputDecoration(
                    labelText: 'Enter Password',
                  ),),
                ),
            
                GestureDetector(
                  onTap: (){
                    _signUpUser();
                  },
                  child: Container(
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
        ),
      ),
    );
  }
}