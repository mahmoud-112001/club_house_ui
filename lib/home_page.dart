import 'package:club_house_ui/Colors.dart';
import 'package:club_house_ui/room_screen.dart';
import 'package:club_house_ui/widgets/room_card.dart';
import 'package:club_house_ui/widgets/user_profile_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Colors.dart';
import 'data.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Cicons,
            size: 28,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.envelope_open,
                color: Cicons,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.calendar,
                color: Cicons,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.bell,
                color: Cicons,
              )),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: user_profile_image(
              size: 34,
              imageURL: currentUser.imageURL,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.all(10.0),
            children: [
              ...roomList.map((e) => Roomcard(room: e)),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
                    Theme.of(context).scaffoldBackgroundColor,
                  ])),
            ),
          ),
          Positioned(
            left: 50,
            right: 50,
            bottom: 50,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton.icon(
                onPressed: () {  },
                icon: Icon(CupertinoIcons.add),
                label: Text("Start a room",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                    primary: accent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
