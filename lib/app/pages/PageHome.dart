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
      body: ListView(
        children: [
          Card(
            margin: EdgeInsets.only(left: 15, right: 15, top: 20),
            child: ListTile(
              leading: Image(
                  image: AssetImage('lib/app/assets/img/southAmerica.png')),
              title: Text(
                'South America',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF1E2243)),
              ),
              subtitle: Text(
                '22 países',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF969AA8)),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF969AA8),
                size: 13,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xFFF3F4F9),
    );
  }
}
