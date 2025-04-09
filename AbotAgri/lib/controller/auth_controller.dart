import 'package:firebase_auth/firebase_auth.dart';

class AuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<String> signUpUSers(
      String email, String fullName, String phoneNumber, String password) async{
    String res = 'Some Error Occured';

    try{
      if(email.isNotEmpty &&
         fullName.isNotEmpty &&
         phoneNumber.isNotEmpty &&
         password.isNotEmpty) {
        //create users

       UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

            res = 'success';

      } else{
        res = 'Please fill all the fields';
      }
    } catch (e){}

    return res;
  }
} 