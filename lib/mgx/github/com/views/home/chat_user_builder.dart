import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_chatss/mgx/github/com/models/user.dart';
import 'package:flutter_chatss/mgx/github/com/views/widgets/char_user_tile.dart';

class MyChatBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(12.0),
      itemCount: userList.length,
      itemBuilder: (context, index) {
        final User user = userList[index];
        return MyChatUserTile(
          onTap: () => null,
          user: user,
          isNew: Random().nextInt(userList.length) % 2 == 0,
        );
      },
      separatorBuilder: (BuildContext context, int index) => Divider(),
    );
  }
}
