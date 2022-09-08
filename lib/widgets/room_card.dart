import 'package:club_house_ui/model/room_model.dart';
import 'package:club_house_ui/room_screen.dart';
import 'package:club_house_ui/widgets/user_profile_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Roomcard extends StatelessWidget {
  final Room room;

  const Roomcard({Key? key, required this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return RoomScreen(room: room,);
        }));
      },
      child: Card(

        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25)
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${room.club}🏡".toUpperCase(),
                style: Theme.of(context).textTheme.overline!.copyWith(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w100,
                    letterSpacing: 1.0),
              ),
              Text(
                "${room.name}🏡".toUpperCase(),
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 100,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 28,
                            top: 23,
                            child: user_profile_image(
                              size: 48.0,
                              imageURL: room.speakers[0].imageURL,
                            ),
                          ),
                          user_profile_image(
                            size: 48.0,
                            imageURL: room.speakers[1].imageURL,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ...room.speakers.map((e) =>
                                Text("  ${e.firstName}  ${e.lastName} 🔉")),
                         SizedBox(height: 30,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("${room.speakers.length+room.followedBySpeakers.length+room.others.length} 🧑"),
                                Text("/",style: TextStyle(fontSize: 20),),
                                Text("${room.speakers.length}"),
                                Icon(CupertinoIcons.chat_bubble_2_fill,color: Colors.grey,),
                              ],
                            )

                          ])),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
