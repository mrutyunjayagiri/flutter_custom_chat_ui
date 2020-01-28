import 'package:flutter/material.dart';
import 'package:flutter_chatss/mgx/github/com/models/user.dart';

class MyDetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double minValue = 8.0;
  final double iconSize = 32.0;

  final User user;

  MyDetailAppBar({@required this.user});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return AppBar(
      actions: <Widget>[
        IconButton(icon: Icon(Icons.more_vert), onPressed: () => null)
      ],
      title: Row(
        children: <Widget>[
          CircleAvatar(
              backgroundColor: Colors.grey,
//                radius: minValue * 2.5,
              backgroundImage: NetworkImage(user.profileImage)),
          SizedBox(
            width: minValue,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("${user.username}"),
              Text(
                "ONLINE",
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .apply(color: Colors.white70),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
