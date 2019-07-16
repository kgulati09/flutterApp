import 'package:flutter/material.dart';
import 'colors.dart';
import 'splash.dart';
import 'signup.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Caps Hockey",
      home: Scaffold(
        body: ListView(children: <Widget>[
          WelcomeMessage(),
          LoginForm(),
          SocialLogin(),
        ]),
      ),
    );
  }
}

class WelcomeMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: new EdgeInsets.fromLTRB(30, 30, 60, 0),
        child: Text(
          'Welcome Back',
          textAlign: TextAlign.left,
          overflow: TextOverflow.clip,
          style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w100),
        ),
      ),
    ]);
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: new EdgeInsets.fromLTRB(30, 20, 30, 10),
      child: Column(
        children: <Widget>[
          TextFormField(
              keyboardType: TextInputType
                  .emailAddress, // Use email input type for emails.
              cursorColor: popCol,
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: popCol),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: popCol),
                ),
              )),
          TextFormField(
              obscureText: true, // Use secure text for passwords.
              cursorColor: popCol,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: popCol),
                counterStyle: TextStyle(color: popCol),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: popCol),
                ),
              )),
          Padding(
            padding: new EdgeInsets.fromLTRB(190, 30, 0, 0),
            child: RaisedButton(
              shape: new CircleBorder(),
              child:
//              Text('Login',style: TextStyle(color: Colors.white),),
                  Icon(Icons.arrow_forward, color: lightBack),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SplashScreen()),
                );
              },
              color: popCol,
            ),
          ),
        ],
      ),
    ));
  }
}

class SocialLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: new EdgeInsets.fromLTRB(0, 0, 0, 20),
        child: Text(
          'Or',
          textAlign: TextAlign.center,
          overflow: TextOverflow.clip,
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w100),
        ),
      ),
      SignInButton(
        Buttons.Google,
        onPressed: () {},
      ),
      SignInButton(
        Buttons.Facebook,
        onPressed: () {
          //TODO: erwefwef
        },
      ),
      FlatButton(
        //color: Colors.red,
        //icon: Icon(Icons.add_a_photo),
        child: Text('Sign up'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignUp()),
          );
        },
      ),
    ]);
  }
}