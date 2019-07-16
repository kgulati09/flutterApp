import 'package:flutter/material.dart';
import 'login.dart';
import 'colors.dart';

//5 second delay for splashscreen
class Splash extends StatefulWidget {
  final Widget child;
  Splash({Key key, this.child}) : super(key: key);
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  var currentView;
  @override
  void initState() {
    super.initState();
    currentView = new SplashScreen();
    new Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(body: currentView);
  }
}

//Splashscreen widget
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        color: darkBack,
      ),
      alignment: Alignment.center,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
/*          new Image.asset("logo.png",
          width: 100, repeat: ImageRepeat.noRepeat, height: 100),*/
          new Icon(Icons.polymer, size: 200, color: popCol),

          new Text("Caps Hockey",
              style: new TextStyle(
                  fontSize: 30,
                  color: darkText,
                  fontWeight: FontWeight.w700)),
          Padding(padding: new EdgeInsets.all(15.0)),
          new CircularProgressIndicator(
            valueColor:
                new AlwaysStoppedAnimation<Color>(popCol),
          ),
        ],
      ),
    );
  }
}