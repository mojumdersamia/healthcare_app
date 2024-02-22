import 'package:flutter/material.dart';

import 'chat_sample.dart';

class ChatBox extends StatelessWidget {
  const ChatBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Color(0xFF7165D6),
          leadingWidth: 16,
          title: const Padding(
            padding: EdgeInsets.only(top: 8),
            child: Row(children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/doctor 1.jpg'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  'Dr. Doctor Name',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ]),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(top: 8, right: 12),
              child: Icon(
                Icons.call,
                color: Colors.white,
                size: 24,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 12),
              child: Icon(
                Icons.video_call,
                color: Colors.white,
                size: 24,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 12),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 24,
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 8),
        itemCount: 16,
        itemBuilder: (context, index) => ChatSample(),
      ),
      bottomSheet: Container(
        height: 65,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 2)
        ]),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.add,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.emoji_emotions_outlined,
                color: Colors.amber,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width / 1.5,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Type Something', border: InputBorder.none),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.send,
                size: 30,
                color: Color(0xFF7165D6),
              ),
            )
          ],
        ),
      ),
    );
  }
}
