import 'package:flutter/material.dart';
// import 'friend_detail_footer.dart';
// import 'friend_detail_body.dart';
import 'friend_detail_header.dart';
import 'friend.dart';
import 'package:meta/meta.dart';

class FriendDetailsPage extends StatefulWidget {
  FriendDetailsPage(
    this.friend, {
    @required this.avatarTag,
    @required this.email,

  });

  final Friend friend;
  final Object avatarTag;
  final String email;
  @override
  _FriendDetailsPageState createState() => new _FriendDetailsPageState();
}

class _FriendDetailsPageState extends State<FriendDetailsPage> {
  @override
  Widget build(BuildContext context) {
    var linearGradient = const BoxDecoration(
      gradient: const LinearGradient(
        begin: FractionalOffset.centerRight,
        end: FractionalOffset.bottomLeft,
        colors: <Color>[
          const Color(0xFF413070),
          const Color(0xFF2B264A),
          // const Color(0xFF000000),
          // const Color(0xFF000000),

        ],
      ),
    );

    return new Scaffold(
      body: new SingleChildScrollView(
        child: new Container(
          decoration: linearGradient,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new FriendDetailHeader(
                widget.friend,
                avatarTag: widget.avatarTag,
              ),
              //new Text (friend.email),
              // new FriendDetailBody(
              //   widget.friend,
              //  // avatarTag: widget.avatarTag,
              // ),
            //   new Padding(
            //     padding: const EdgeInsets.all(24.0),
            //     child: new FriendDetailBody(widget.friend),
            //   ),
            //  new FriendShowcase(widget.friend),

            ],
          ),
        ),
      ),
    );
  }
}
