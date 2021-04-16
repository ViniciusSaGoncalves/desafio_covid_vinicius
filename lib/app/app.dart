import 'package:desafio_covid_vinicius/app/pages/PageContinentOverview.dart';
import 'package:flutter/material.dart';

import 'pages/PageHome.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid-19',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Ubuntu'),
      home: PageHome(title: 'Covid-19'),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/continent': (context) => PageContinentOverview(),
      },
    );
  }
}
