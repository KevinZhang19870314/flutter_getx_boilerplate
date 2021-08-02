import 'package:flutter/material.dart';
import 'package:flutter_getx_boilerplate/shared/shared.dart';

class InboxTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Inbox'),
      ),
      body: Container(
        color: Color(0XFFF5F5F5),
        child: ListView(
          children: [
            SendMsgBox(message: "Hello"),
            ReceiveMsgBox(message: "Hi, how are you"),
            SendMsgBox(message: "I am great how are you doing"),
            ReceiveMsgBox(message: "I am also fine"),
            SendMsgBox(message: "Can we meet tomorrow?"),
            ReceiveMsgBox(message: "Yes, of course we will meet tomorrow"),
          ],
        ),
      ),
    );
  }
}
