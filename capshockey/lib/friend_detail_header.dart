import 'package:flutter/material.dart';
import 'diagonally_cut_colored_image.dart';
import 'friend.dart';
import 'package:meta/meta.dart';

class FriendDetailHeader extends StatelessWidget {
  static const BACKGROUND_IMAGE = 'images/profile_header_background.png';

  FriendDetailHeader(
    this.friend, {
    @required this.avatarTag,
  });

  final Friend friend;
  final Object avatarTag;

  Widget _buildDiagonalImageBackground(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return new DiagonallyCutColoredImage(
      new Image.asset(
        BACKGROUND_IMAGE,
        width: screenWidth,
        height: 300.0,
        fit: BoxFit.cover,
      ),
      // color: const Color(0xBB8338f4),
      //color: Colors.teal[500],
      color: const Color(0xBB009688),
    );
  }

  Widget _buildAvatar() {
    return new  Padding(
   padding: EdgeInsets.fromLTRB(0,0,0,22.0),
   child: 
     Hero(
      tag: avatarTag,
      child: new CircleAvatar(
        backgroundImage: new NetworkImage(friend.avatar),
        radius: 70.0,
      ),
    ));
  }

  Widget _buildName() {
    return Hero(
      tag: avatarTag,
      child: new Text(
        friend.name,
        style: TextStyle(color: Colors.white, fontSize: 32),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // var theme = Theme.of(context);
    // var textTheme = theme.textTheme;

    return new Stack(
      children: <Widget>[
        _buildDiagonalImageBackground(context),
        //  new Center(child:_buildAvatar()),
        new Align(
          alignment: FractionalOffset.center,
          heightFactor: 1.5,
          child: new Column(
            children: <Widget>[
              _buildAvatar(),

             _buildName(),
              //   _buildFollowerInfo(textTheme),
              //   _buildActionButtons(theme),
            ],
          ),
        ),

        new Positioned(
          top: 26.0,
          left: 4.0,
          child: new BackButton(color: Colors.white),
        ),
      ],
    );
  }
}
