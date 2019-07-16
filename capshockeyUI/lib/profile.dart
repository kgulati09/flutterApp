import 'package:flutter/material.dart';
import 'colors.dart';
import 'login.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Caps Hockey",
      home: Scaffold(
        body: ListView(children: <Widget>[
          //   SizedBox(height: screenSize.height / 6.4),
        //  _buildCoverImage(),
           _buildProfileImage(),
           _buildFullName(),
           _buildStatus(context),
           _buildStatContainer(),
          // _buildBio(context),
          // //     _buildSeparator(screenSize),
        // SizedBox(height: 10.0),
           _buildGetInTouch(context),
          // SizedBox(height: 8.0),
           _buildButtons(),
              SocialLogin(),
        ]),
      ),
    );
  }
}

// class UserProfilePage {
//   final String _fullName = "Nick Frost";
//   final String _status = "Software Developer";
//   final String _bio =
//       "\"Hi, I am a Freelance developer working for hourly basis. If you wants to contact me to build your product leave a message.\"";
//   final String _followers = "173";
//   final String _posts = "24";
//   final String _scores = "450";
// }

Widget _buildCoverImage() {
  return Container(
    height: 2.6,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/hockey.jpg'),
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget _buildProfileImage() {
  return Padding(
      padding: EdgeInsets.all(20),
      child: CircleAvatar(
          radius: 150,
          backgroundImage: NetworkImage(
              'https://pbs.twimg.com/profile_images/901947348699545601/hqRMHITj_400x400.jpg')));
}

Widget _buildFullName() {
  TextStyle _nameTextStyle = TextStyle(
    fontFamily: 'Roboto',
    color: Colors.black,
    fontSize: 28.0,
    fontWeight: FontWeight.w700,
  );

  return Text(
    "Barad Ghimire",
    style: _nameTextStyle,
  );
}

Widget _buildStatus(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
    decoration: BoxDecoration(
      color: Theme.of(context).scaffoldBackgroundColor,
      borderRadius: BorderRadius.circular(4.0),
    ),
    child: Text(
      "test text",
      style: TextStyle(
        fontFamily: 'Spectral',
        color: Colors.black,
        fontSize: 20.0,
        fontWeight: FontWeight.w300,
      ),
    ),
  );
}


Widget _buildStatItem(String label, String count) {
  TextStyle _statLabelTextStyle = TextStyle(
    fontFamily: 'Roboto',
    color: Colors.black,
    fontSize: 16.0,
    fontWeight: FontWeight.w200,
  );

  TextStyle _statCountTextStyle = TextStyle(
    color: Colors.black54,
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
  );

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        count,
        style: _statCountTextStyle,
      ),
      Text(
        label,
        style: _statLabelTextStyle,
      ),
    ],
  );
}

Widget _buildStatContainer() {
  return Container(
    height: 60.0,
    margin: EdgeInsets.only(top: 8.0),
    decoration: BoxDecoration(
      color: Color(0xFFEFF4F7),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _buildStatItem("Hours", "10"),
        _buildStatItem("Completed", "10"),
        _buildStatItem("Comitted", "30"),
      ],
    ),
  );
}

Widget _buildBio(BuildContext context) {
  TextStyle bioTextStyle = TextStyle(
    fontFamily: 'Spectral',
    fontWeight: FontWeight.w400, //try changing weight to w500 if not thin
    fontStyle: FontStyle.italic,
    color: Color(0xFF799497),
    fontSize: 16.0,
  );

  return Container(
    color: Theme.of(context).scaffoldBackgroundColor,
    padding: EdgeInsets.all(8.0),
    child: Text(
      "Lorem Ipsum sdfgjhasdfkj asblfk jbalkfbjka sdnbvj hargslf hjbasdknvb",
      textAlign: TextAlign.center,
      style: bioTextStyle,
    ),
  );
}

Widget _buildSeparator(Size screenSize) {
  return Container(
    width: screenSize.width / 1.6,
    height: 2.0,
    color: Colors.black54,
    margin: EdgeInsets.only(top: 4.0),
  );
}

Widget _buildGetInTouch(BuildContext context) {
  return Container(
    color: Theme.of(context).scaffoldBackgroundColor,
    padding: EdgeInsets.only(top: 8.0),
    child: Text(
      "Some other text",
      style: TextStyle(fontFamily: 'Roboto', fontSize: 16.0),
    ),
  );
}

Widget _buildButtons() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
    child: Row(
      children: <Widget>[
        Expanded(
          child: InkWell(
            onTap: () => print("followed"),
            child: Container(
              height: 40.0,
              decoration: BoxDecoration(
                border: Border.all(),
                color: Color(0xFF404A5C),
              ),
              child: Center(
                child: Text(
                  "TEST",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 10.0),
        Expanded(
          child: InkWell(
            onTap: () => print("Message"),
            child: Container(
              height: 40.0,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "TEST",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
