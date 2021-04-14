import 'package:desafio_covid_vinicius/app/models/ContinentDataModel.dart';
import 'package:desafio_covid_vinicius/app/utils/imgPaths.dart';
import 'package:desafio_covid_vinicius/app/widgets/continentCardItemList.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  PageHome({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  List<ContinentDataModel> continents;
  Future getHttp() async {
    try {
      Response response = await Dio()
          .get('https://disease.sh/v3/covid-19/continents?yesterday=true');
      continents = (response.data as List)
          .map((e) => ContinentDataModel.fromJson(e))
          .toList();
      return continents;
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
      body: FutureBuilder(
        future: getHttp(),
        builder: (_, snapshot) {
          return ListView.builder(
            itemCount: continents.length,
            itemBuilder: (_, index) {
              return ContinentCardItemList(
                continent: continents[index].continent,
                countries: continents[index].countries.length,
              );
            },
          );
        },
      ),
      backgroundColor: Color(0xFFF3F4F9),
    );
  }
}
