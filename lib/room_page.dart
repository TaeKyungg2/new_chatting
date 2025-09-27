import 'package:flutter/material.dart';
import 'chat_room.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({super.key});
  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  List<ListTile>? roomList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('rooms'),
      ),
      body: TextButton(
        child: Text('room1'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChatRoom(roomId: 1)),
          );
        },
      ),
    );
  }
}
