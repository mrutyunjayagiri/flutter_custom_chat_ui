import 'package:flutter/material.dart';
import 'package:flutter_chatss/mgx/github/com/views/home/chat_home.dart';

class MySplashViews extends StatefulWidget {
  @override
  _MySplashViewsState createState() => _MySplashViewsState();
}

class _MySplashViewsState extends State<MySplashViews> {
  void _moveToHome() async {
    await Future.delayed(
      Duration(seconds: 2),
    );
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => MyChatHome()),
        (Route<dynamic> _) => false);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _moveToHome();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "FCCU",
                style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 95.0),
              ),
              Text(
                "Flutter Custom Chat UI",
                style: TextStyle(
//                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
              SizedBox(
                height: 155,
              )
            ],
          ),
        ),
      ),
    );
  }
}
