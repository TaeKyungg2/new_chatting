import 'package:flutter/material.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({super.key});
  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('rooms'),
      ),
      body: Text('temp'),
    );
  }
}
