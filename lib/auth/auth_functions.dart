// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';

class FireAuth {
  //check if user is logged in
  Future<User?> checkauthstate({
    required String name,
    required String email,
    required String password,
  }) async {
    User? user = FirebaseAuth.instance.currentUser;

    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
    return user;
  }

  //verrify email address
  // TODO Verify whether this works.
  Future<User?> verifyEmail({
    required String name,
    required String email,
    required String password,
  }) async {
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null && !user.emailVerified) {
      await user.sendEmailVerification();
    }
    return user;
  }

  //register new user
  static Future<User?> registerUsingEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    return user;
  }

  //login
  static Future<User?> signInUsingEmailPassword({
    required String email,
    required String password,
    //required BuildContext context,
  }) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }

    return user;
  }

  //TODO Add SocialAuth Firebase Function - Google, Twitter, Github, Phone No.
  //TODO Check out Email Link Auth and decide if to add
  //

}
