import 'user_model.dart';
class Room{
  final String club;
  final String name;
  final List<User> speakers;
  final List<User> followedBySpeakers;
  final List<User> others;

  Room({required this.club, required this.name, required this.speakers, required this.followedBySpeakers, required this.others});


}