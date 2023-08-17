import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<String> signUpUser({
    required String email,
    required String username,
    required String password,
  }) async {
    String result = 'some error occured';
    try {
      if (email.isNotEmpty || password.isNotEmpty || username.isNotEmpty) {
        UserCredential credential = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        _firebaseFirestore.collection('users').doc(credential.user!.uid).set({
          'username': username,
          'uid ': credential.user!.uid,
          'email': email,
          'following': [],
          'followers': []
        });
        result = 'success';
      }
    } catch (error) {
      result = error.toString();
    }

    return result;
  }

  Future<String> loginUser({
    required String email,
    required String password,
}) async {
    String result = 'some error occured';
    try {if(email.isNotEmpty||password.isNotEmpty){
    UserCredential credential = await _auth.signInWithEmailAndPassword (
      email: email, password: password);
    result = "success";
    result = "please enter all the field";

    }
    } catch(error){result = error.toString();
    }

    return result;
  }
}
