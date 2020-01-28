import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double minValue = 8.0;
  final double iconSize = 32.0;

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return Container(
//      color: Colors.grey[50],
      padding: EdgeInsets.all(minValue * 2),
//      height: kToolbarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            hoverColor: Colors.black,
            onPressed: () => null,
            icon: Icon(
              Icons.menu,
              size: iconSize,
            ),
          ),
//          CircleAvatar(
//            radius: minValue * 3.5,
//            backgroundColor: Colors.transparent,
//            child: Icon(
//              Icons.menu,
//              color: Colors.black,
//              size: minValue * 3.5,
//            ),
//          ),
          IconButton(
            onPressed: () => null,
            icon: Icon(
              Icons.search,
              size: iconSize,
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
