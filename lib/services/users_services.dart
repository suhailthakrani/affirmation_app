
import 'package:affirmation_app/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


class UserServices {
  Future<String> registerUser({required UserModel model})async{
    try {
      UserCredential credential =  await FirebaseAuth.instance.createUserWithEmailAndPassword(email: model.email, password: model.password);
     if(credential.user != null && credential.user!.uid.isNotEmpty) {
      model.uuid = credential.user!.uid;
      await FirebaseFirestore.instance.collection("users").doc(credential.user!.uid).set(model.toJsonForRegister());
      return "Success";
     }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return "ERROR_EMAIL_ALREADY_IN_USE";
      } else {
        return e.toString();
      }
    }
    return "";
  }

  Future<String> updateUserDetails({required UserModel model})async{
    try {
      var user = FirebaseAuth.instance.currentUser;
      if( user != null ) {
        await FirebaseFirestore.instance.collection("users").doc(user.uid).update(model.toJsonForUpdate());
        return "Success";
      }
    } on FirebaseAuthException catch (e) {

        return e.toString();

    }
    return "";
  }


  Future<String> loginUser(String email, String pass) async {
    try {
      UserCredential credential =  await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: pass);
     if(credential.user != null && credential.user!.uid.isNotEmpty) {
      return "Success";
     }
    } on FirebaseAuthException catch (e,d) {
      if (e.code == 'user-not-found') {
        return "user-not-found";
      }else if (e.code == 'wrong-password') {
        return "wrong-password";
      }
      else if (e.code == 'invalid-credential') {
        return "invalid-login-credentials";
      }else {
        return "$d"+e.toString();
      }
    }
    return "";
  }

}