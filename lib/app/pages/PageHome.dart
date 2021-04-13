import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  PageHome({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image(image: AssetImage('lib/app/assets/img/logo.png')),
        elevation: 0,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Color(0xFF1E2243),
            fontFamily: 'Ubuntu',
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        backgroundColor: Color(0xFFFBFBFD),
        centerTitle: true,
      ),
      body: Container(
        child: Text('alo'),
      ),
      backgroundColor: Color(0xFFF3F4F9),
    );
  }
}
