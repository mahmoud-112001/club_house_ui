import 'package:club_house_ui/widgets/user_profile_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RoomImage extends StatelessWidget {
 String  imageURL;
   String name;
   double size;
   bool isnew =false;
   bool ismute = false;

  RoomImage({Key? key, required this.imageURL, required this.name, this.size=42,required this.ismute,required this.isnew}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Stack(
          children: [
            Padding(
                padding: EdgeInsets.all(10),
                child: user_profile_image(
                    size: size, imageURL: imageURL)),
            if (isnew)
              Positioned(
                left: 0,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(color: Colors.black26, offset: Offset(0, 2))
                      ]),
                  child: Text(
                    "🎉",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            if (ismute)
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(color: Colors.black26, offset: Offset(0, 2))
                      ]),
                  child: Icon(
                    CupertinoIcons.mic_slash_fill,
                  ),
                ),
              )
          ],
        )
      ],
    );
  }
}
