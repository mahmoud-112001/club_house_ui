import 'dart:math';

import 'package:club_house_ui/widgets/room_profile_image.dart';
import 'package:club_house_ui/widgets/user_profile_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data.dart';
import 'model/room_model.dart';

class RoomScreen extends StatelessWidget {
  final Room room;

  const RoomScreen({
    Key? key,
    required this.room,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: TextButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              CupertinoIcons.chevron_down,
              color: Colors.black,
            ),
            label: Text(
              "Hallway",
              style: TextStyle(color: Colors.black),
            )),
        leadingWidth: 130,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.doc,
                color: Colors.black,
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
      body: Container(
        padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${room.club}🏠".toUpperCase(),
                          style: Theme.of(context).textTheme.overline!.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                              letterSpacing: 1.0)),
                      Icon(CupertinoIcons.ellipsis)
                    ],
                  ),
                  Text(
                    room.name,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                        ),
                  )
                ],
              ),
            ),
            SliverPadding(
              sliver: SliverGrid.count(
                crossAxisCount: 3,
                mainAxisSpacing: 10.0,
                children: room.speakers
                    .map((e) => RoomImage(
                          imageURL: e.imageURL,
                          name: e.firstName,
                          size: 66,
                          ismute: Random().nextBool(),
                          isnew: Random().nextBool(),
                        ))
                    .toList(),
              ),
              padding: EdgeInsets.all(14),
            ),
            SliverToBoxAdapter(
                child: Text(
              "Followed by speakers",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 14,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.bold,
                  ),
            )),
            SliverPadding(
              sliver: SliverGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.7,
                children: room.followedBySpeakers
                    .map((e) => RoomImage(
                          imageURL: e.imageURL,
                          name: e.firstName,
                          size: 66,
                          ismute: Random().nextBool(),
                          isnew: Random().nextBool(),
                        ))
                    .toList(),
              ),
              padding: EdgeInsets.all(14),
            ),
            SliverToBoxAdapter(
                child: Text(
              "Followed by Others",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 14,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.bold,
                  ),
            )),
            SliverPadding(
              sliver: SliverGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.7,
                children: room.others
                    .map((e) => RoomImage(
                          imageURL: e.imageURL,
                          name: e.firstName,
                          size: 66,
                          ismute: Random().nextBool(),
                          isnew: Random().nextBool(),
                        ))
                    .toList(),
              ),
              padding: EdgeInsets.all(10),
            ),
            SliverPadding(padding: EdgeInsets.all(15))
          ],
        ),
      ),
      bottomSheet: Container(
        height: 90,
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                "👋 Leave Quietly",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.red),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
      Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
              padding: EdgeInsets.all(6),
              child: Icon(
                CupertinoIcons.add,
                size: 30,
              ),
            ),
          ),
          SizedBox(width: 12,),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
              padding: EdgeInsets.all(6),
              child: Icon(
                CupertinoIcons.hand_raised,
                size: 30,
              ),
            ),
          ),

          ],
        ),
    ]),
    ) );
  }
}
