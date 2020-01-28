import 'package:flutter/material.dart';
import 'package:flutter_chatss/mgx/github/com/views/home/chat_user_builder.dart';
import 'package:flutter_chatss/mgx/github/com/views/widgets/custom_appbar.dart';

class MyChatHome extends StatefulWidget {
  @override
  _MyChatHomeState createState() => _MyChatHomeState();
}

class _MyChatHomeState extends State<MyChatHome> {
  final double minValue = 8.0;

  Widget _buildTitle() {
    return Container(
      color: Colors.grey[50],
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(
          horizontal: minValue * 2, vertical: minValue * 1.5),
      child: Text(
        "Flutter \nCustom Chat UI",
        style: Theme.of(context)
            .textTheme
            .display2
            .apply(color: Colors.black, fontWeightDelta: 1),
      ),
    );
  }

  Widget _buildChatBody() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(minValue * 5),
          topRight: Radius.circular(minValue * 5)),
      child: Container(
        width: MediaQuery.of(context).size.width,
//        color: Colors.grey[100],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(minValue * 2),
              child: Text("My Recent Chats"),
            ),
            Expanded(child: MyChatUserBuilder())
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
//        backgroundColor: Theme.of(context).primaryColor,
        drawer: Drawer(),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              MyAppBar(),
              _buildTitle(),
//              MyCounterBody(),
              Expanded(child: _buildChatBody())
            ],
          ),
        ),
      ),
    );
  }
}
