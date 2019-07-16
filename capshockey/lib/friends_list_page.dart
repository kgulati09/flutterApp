import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'friend_details_page.dart';
import 'friend.dart';
import 'package:url_launcher/url_launcher.dart';

class FriendsListPage extends StatefulWidget {
  @override
  _FriendsListPageState createState() => new _FriendsListPageState();
}

class _FriendsListPageState extends State<FriendsListPage> {
  List<Friend> _friends = [];

  @override
  void initState() {
    super.initState();
    _loadFriends();
  }

  Future<void> _loadFriends() async {
    http.Response response =
        await http.get('https://randomuser.me/api/?results=50');

    setState(() {
      _friends = Friend.allFromResponse(response.body);
    });
  }

  Widget _buildFriendListTile(BuildContext context, int index) {
    var friend = _friends[index];
    return new Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: ListTile(
        // onTap: (){    FriendDetailsPage(Friend friend, avatarTag: avatarTag)    },
        onTap: () => _navigateToFriendDetails(friend, index),

        trailing: new IconButton(
            icon: new Icon(Icons.message),
            onPressed: ()
                // async {
                //         if (await canLaunch("tel:" + friend.phone)) {
                //           await launch("tel:+410" + friend.phone);
                //         } else {
                //           throw 'Could not launch ';
                //         }
                //       },
                async {
              // Android
              var uri = 'sms:410' +
                  friend.phone +
                  '?body=Hi%20' +
                  friend.name +
                  "!%20Sent%20from%20CAPS%20Hockey";
              if (await canLaunch(uri)) {
                await launch(uri);
              } else {
                // iOS
                const uri = 'sms:0039-222-060-888';
                if (await canLaunch(uri)) {
                  await launch(uri);
                } else {
                  throw 'Could not launch $uri';
                }
              }
            }),

        leading: new Hero(
          tag: index,
          child: new CircleAvatar(
            backgroundImage: new NetworkImage(friend.avatar),
          ),
        ),
        title: new Text(friend.name),
        //subtitle: new Text("(410)"+friend.phone),
      ),
    );
  }

  void _navigateToFriendDetails(Friend friend, Object avatarTag) {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (c) {
          return new FriendDetailsPage(friend,
              avatarTag: avatarTag, email: friend.email);
        },
      ),
    );
  }

  // void _friendPopup(Friend friend) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       // return object of type Dialog
  //       return AlertDialog(
  //         title: new Text("Alert Dialog title"),
  //         content: new Text("Alert Dialog body"),
  //         actions: <Widget>[
  //           // usually buttons at the bottom of the dialog
  //           new FlatButton(
  //             child: new Text(friend.name),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    Widget content;

    if (_friends.isEmpty) {
      content = new Center(
        child: new CircularProgressIndicator(),
      );
    } else {
      content = new ListView.builder(
        itemCount: _friends.length,
        itemBuilder: _buildFriendListTile,
      );
    }

    return new Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.green[700],
        title: const Text('Members'),
      ),
      body: content,
    );
  }
}
