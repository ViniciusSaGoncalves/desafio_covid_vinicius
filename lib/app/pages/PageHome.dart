import 'package:desafio_covid_vinicius/app/models/ContinentDataModel.dart';
import 'package:desafio_covid_vinicius/app/utils/imgPaths.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  PageHome({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  var aux = 'europe';
  void getHttp() async {
    try {
      Response response = await Dio()
          .get('https://disease.sh/v3/covid-19/continents?yesterday=true');
      final list = (response.data as List)
          .map((e) => ContinentDataModel.fromJson(e))
          .toList();

      print(list);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    getHttp();
    return Scaffold(
      appBar: AppBar(
        leading: Image(image: AssetImage(ImgPath.getPathImg('logo'))),
        elevation: 0,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Color(0xFF1E2243),
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
              leading: Image(image: AssetImage(ImgPath.getPathImg('$aux'))),
              title: Text(
                'South America',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF1E2243)),
              ),
              subtitle: Text(
                '22 países',
                style: TextStyle(
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
