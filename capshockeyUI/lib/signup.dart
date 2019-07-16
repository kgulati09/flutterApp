import 'package:flutter/material.dart';
import 'colors.dart';
import 'login.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Caps Hockey",
      home: Scaffold(
        body: ListView(children: <Widget>[
          //  BackButton(),
          CreateMessage(),
          SignupForm(),
          //   SocialLogin(),
        ]),
      ),
    );
  }
}

class BackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return       Padding(
      padding: new EdgeInsets.fromLTRB(0, 0, 500, 0),
child:
    IconButton(
      icon: Icon(Icons.arrow_back),
      // onPressed:() => Navigator.pop(context, true),
      onPressed: () => Navigator.of(context).pop(),
    )
    );
  }
}

class CreateMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: new EdgeInsets.fromLTRB(30, 30, 60, 0),
        child: Text(
          'Create Account',
          textAlign: TextAlign.left,
          overflow: TextOverflow.clip,
          style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w100),
        ),
      ),
    ]);
  }
}

class SignupForm extends StatelessWidget {
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
                labelText: 'First name',
                labelStyle: TextStyle(color: popCol),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: popCol),
                ),
              )),
          TextFormField(
              keyboardType: TextInputType
                  .emailAddress, // Use email input type for emails.
              cursorColor: popCol,
              decoration: InputDecoration(
                labelText: 'Last name',
                labelStyle: TextStyle(color: popCol),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: popCol),
                ),
              )),
          TextFormField(
              keyboardType: TextInputType
                  .emailAddress, // Use email input type for emails.
              cursorColor: popCol,
              decoration: InputDecoration(
                labelText: 'Email address',
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
              onPressed: () => null,
              color: popCol,
            ),
          ),
        ],
      ),
    ));
  }
}
