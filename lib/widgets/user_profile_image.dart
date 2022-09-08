import 'package:flutter/material.dart';

class user_profile_image extends StatelessWidget {
  final double size;
  final String imageURL;
  const user_profile_image({
    Key? key, required this.size,  required this.imageURL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size/2 - size/10),
      child: Image.network(
       imageURL,
        height: size,
        width: size,
        fit: BoxFit.cover,
      ),
    );
  }
}
