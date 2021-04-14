import 'package:desafio_covid_vinicius/app/pages/PageContinentOverview.dart';
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
      initialRoute: '/',
      routes: {
        '/continent': (context) => PageContinentOverview(),
      },
    );
  }
}
