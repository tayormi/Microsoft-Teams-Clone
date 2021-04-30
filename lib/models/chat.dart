import 'package:flutter/material.dart';

class Chat {
  final String image, name, subject, time;
  final bool isChecked, isOnline;
  final Color tagColor;

  Chat(
      {this.image,
      this.name,
      this.subject,
      this.time,
      this.isChecked,
      this.isOnline,
      this.tagColor});
}

// List<Chat> chats = List.generate(
//   chatData.length,
//   (index) => Chat(
//       image: chatData[index]['image'],
//       name: chatData[index]['name'],
//       subject: chatData[index]['subject'],
//       time: chatData[index]['time'],
//       isChecked: chatData[index]['isChecked'],
//       isOnline: chatData[index]['isOnline'],
//       tagColor: chatData[index]['tagColor']),
// );

List chatData = [
  {
    "name": "Bidemi Adetayo",
    "image": "assets/images/user_3.png",
    "subject": "You: Oh. One month already? Do giveaway.",
    "isChecked": true,
    "isOnline": true,
    "tagColor": null,
    "time": "2:14 PM"
  },
  {
    "name": "Eli Schiff",
    "image": "assets/images/user_2.png",
    "subject": "I go on Gen later be that. Sha chill. Give me till evening.",
    "isChecked": true,
    "isOnline": true,
    "tagColor": null,
    "time": "3:30PM"
  },
  {
    "name": "Team Sync",
    "image": "assets/images/user_3.png",
    "subject": "I checked the codes just now, we no remove am ooo",
    "isChecked": true,
    "isOnline": true,
    "tagColor": null,
    "time": "8:45 AM"
  },
  {
    "name": "Twitter Team",
    "image": "assets/images/user_4.png",
    "subject": "Hadrat: Mr Temitope Ajiboye",
    "isChecked": true,
    "isOnline": false,
    "tagColor": null,
    "time": "9:46 AM"
  },
  {
    "name": "Fortune, Wale + 2",
    "image": "assets/images/user_5.png",
    "subject": "Fortune: New group event created:",
    "isChecked": true,
    "isOnline": true,
    "tagColor": null,
    "time": "10:20 AM"
  },
  {
    "name": "FORTUNATUS OCHI",
    "image": "assets/images/user_4.png",
    "subject": "You: Lmao",
    "isChecked": true,
    "isOnline": true,
    "tagColor": null,
    "time": "11:00 AM"
  },
];
