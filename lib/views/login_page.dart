import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'register_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  late String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 100),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
          image : DecorationImage(
              image: AssetImage('assets/Bg31.png'),
              fit: BoxFit.fill
          ),
        ),
    child: SafeArea(
      child: Column(
        children: <Widget>[
        Expanded(
    child: SingleChildScrollView(
    child: Padding(
    padding: EdgeInsets.all(16.0),
    child: Form(
    key: _formKey,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
    SizedBox(
    height: 80.0,
    ),
    Text(
    'Welcome back!',
    textAlign: TextAlign.center,
    style: TextStyle(
    fontSize: 24.0,
    color: Colors.white,
    ),
    ),
    SizedBox(
    height: 48.0,
    ),
    TextFormField(
    decoration: InputDecoration(
    labelText: 'Email',
    fillColor: Colors.white,
    filled: true,
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(25.0),
    borderSide: BorderSide(),
    ),
    ),
    validator: (value) {
    if (value!.isEmpty) {
    return 'Please enter your email';
    }
    if (!value.contains('@')) {
    return 'Please enter a valid email';
    }
    return null;
    },
    onSaved: (value) => _email = value!.trim(),
    ),
    SizedBox(
    height: 16.0,
    ),
    TextFormField(
    decoration: InputDecoration(
    labelText: 'Password',
    fillColor: Colors.white,
    filled: true,
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(25.0),
    borderSide: BorderSide(),
    ),
    ),
    obscureText: true,
    validator: (value) {
    if (value!.isEmpty) {
    return 'Please enter your password';
    }
    if (value.length < 6) {
    return 'Password must be at least 6 characters';
    }
    return null;
    },
    onSaved: (value) => _password = value!.trim(),
    ),
    SizedBox(
    height: 16.0,
    ),
    ElevatedButton(
    child: Text('Login'),
    onPressed: () {
    if (_formKey.currentState!.validate()) {
    _formKey.currentState!.save();
    _signInWithEmailAndPassword();
    }
    },
    ),
    SizedBox(
    height: 16.0,
    ),
    ElevatedButton(
    child: Text('Sign in with Google'),
    onPressed: _signInWithGoogle,
    ),
    SizedBox(
    height: 16.0,
    ),
    TextButton(
    child: Text('Don\'t have an account? Register here.'),
    onPressed: () {
    Navigator.of(context).pushReplacement(
    MaterialPageRoute(
    builder: (context) => RegisterPage(),
    ),
    );
    },
    ),
    ],
    ),
    ),
    ),),),]),),),
    );
  }

  void _signInWithGoogle() async {
    try {
      // Sign in with Google and get the user account
      GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      // Get the authentication credentials for the user
      GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
      OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in to Firebase with the Google credentials
      UserCredential userCredential = await _auth.signInWithCredential(credential);
      User? user = userCredential.user;

      if (user != null) {
        // User sign-in successful, navigate to home screen
        Navigator.of(context).pushReplacementNamed('/home');
      }
    } catch (e) {
      print(e);
      // Handle sign-in errors
    }
  }

  void _signInWithEmailAndPassword() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _email,
        password: _password,
      );
      User? user = userCredential.user;
      if (user != null) {
        // User sign-in successful, navigate to home screen
        Navigator.of(context).pushReplacementNamed('/home');
      }
    } catch (e) {
      print(e);
      // Handle sign-in errors
    }
  }

}