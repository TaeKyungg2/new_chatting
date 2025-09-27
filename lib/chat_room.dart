import 'package:flutter/material.dart';
//import 'package:web_socket_channel/web_socket_channel.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({super.key, required this.roomId});
  final int roomId;

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  List<ListTile> chatMessage = [
    const ListTile(title: Text("안녕")),
    const ListTile(title: Text("Hello")),
    const ListTile(title: Text("ㅋㅋㅋㅋ")),
  ];
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('chat_room'),backgroundColor: Color.fromARGB(255, 0, 205, 34),),
      body: ListView(children: chatMessage),
      bottomSheet: Row(
        children: [
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue, width: 3)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 3),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 255, 206, 8), width: 3),
                  ),
                  labelText: 'to_room',
                  hintText: 'text',
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: IconButton(
              onPressed: () {
                String text = _controller.text;
                if (text.isNotEmpty) {
                  _controller.clear();
                }
              },
              icon: Icon(Icons.send),
            ),
          ),
        ],
      ),
    );
  }
}
