import 'package:flutter/material.dart';

import 'pages/PageHome.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Ubuntu'),
      home: PageHome(title: 'Covid-19'),
    );
  }
}
