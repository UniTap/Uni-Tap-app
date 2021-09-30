import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      itemCount: 7, //<-- Normally we put the data array's length.
      itemBuilder: (context, index) {
        return ListTile(
            leading: Icon(Icons.person),
            title: Text('Contact $index'),
            subtitle: Text('Hi There! I am using UniTap'));
      },
    );
  }
}
