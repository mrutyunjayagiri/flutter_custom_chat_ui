import 'package:flutter/material.dart';
import 'package:flutter_chatss/mgx/github/com/models/messages.dart';
import 'package:flutter_chatss/mgx/github/com/models/user.dart';
import 'package:flutter_chatss/mgx/github/com/views/widgets/chart_detail_appbar.dart';
import 'package:flutter_chatss/mgx/github/com/views/widgets/chat_message_tile.dart';

class MyChatDetailPage extends StatefulWidget {
  final User user;

  MyChatDetailPage({@required this.user});

  @override
  _MyChatDeatilPageState createState() => _MyChatDeatilPageState();
}

class _MyChatDeatilPageState extends State<MyChatDetailPage> {
  final double minValue = 8.0;
  final double iconSize = 28.0;
  FocusNode _focusNode;
  TextEditingController _txtController = TextEditingController();

  bool isCurrentUserTyping = false;
  ScrollController _scrollController;

  String message = '';

  initState() {
    super.initState();
    _scrollController = ScrollController(initialScrollOffset: 0);

    _focusNode = FocusNode();
    _focusNode.addListener(() {
      print('Something happened');
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();

    super.dispose();
  }

  void onTextFieldTapped() {}
  void _onMessageChanged(String value) {
    setState(() {
      message = value;
      if (value.trim().isEmpty) {
        isCurrentUserTyping = false;
        return;
      } else {
        isCurrentUserTyping = true;
      }
    });
  }

  void _like() {}
  void _sendMessage() {
    setState(() {
      myMessages.insert(
          0, (Message(messageBody: message, senderId: currentUser.userId)));
      message = '';
      _txtController.text = '';
    });
    _scrollToLast();
  }

  void _scrollToLast() {
    _scrollController.animateTo(
      0.0,
      curve: Curves.easeOut,
      duration: const Duration(milliseconds: 300),
    );
  }

  Widget _buildBottomSection() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            height: 52,
            margin: EdgeInsets.all(minValue),
            padding: EdgeInsets.symmetric(horizontal: minValue),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(minValue * 4))),
            child: Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.insert_emoticon,
                  size: iconSize,
                ),
                SizedBox(
                  width: minValue,
                ),
                Expanded(
                  child: TextField(
                    focusNode: _focusNode,
                    keyboardType: TextInputType.text,
                    controller: _txtController,
                    onChanged: _onMessageChanged,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Type your message"),
                    autofocus: false,
                    onTap: () => onTextFieldTapped(),
                  ),
                ),
                Icon(
                  Icons.attach_file,
                  size: iconSize,
                ),
                isCurrentUserTyping
                    ? Container()
                    : Icon(
                        Icons.camera_alt,
                        size: iconSize,
                      ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: minValue),
          child: FloatingActionButton(
            onPressed: () => isCurrentUserTyping ? _sendMessage() : _like(),
            child: Icon(isCurrentUserTyping ? Icons.send : Icons.thumb_up),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: MyDetailAppBar(
          user: widget.user,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                    reverse: true,
                    shrinkWrap: true,
                    controller: _scrollController,
                    padding: EdgeInsets.symmetric(
                        vertical: minValue * 2, horizontal: minValue),
                    itemCount: myMessages.length,
                    itemBuilder: (context, index) {
                      final Message message = myMessages[index];
                      return MyMessageChatTile(
                        message: message,
                        isCurrentUser: message.senderId == currentUser.userId,
                      );
                    }),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: _buildBottomSection(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
