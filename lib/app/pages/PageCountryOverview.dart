import 'package:desafio_covid_vinicius/app/models/country_data_model.dart';
import 'package:desafio_covid_vinicius/app/widgets/WidgetCardInfoData.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PageCountryOverview extends StatefulWidget {
  final String countryName;
  const PageCountryOverview({this.countryName, Key key}) : super(key: key);

  @override
  _PageCountryOverviewState createState() => _PageCountryOverviewState();
}

class _PageCountryOverviewState extends State<PageCountryOverview> {
  CountryDataModel country;
  Future getDataCountry(String country) async {
    try {
      Response response = await Dio().get(
          'https://disease.sh/v3/covid-19/countries/${country.toLowerCase()}?strict=true');

      return response.data;
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: InkWell(
          child: Padding(
            padding: EdgeInsets.only(left: 25),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xFF1E2243),
                  size: 18,
                ),
                Text(
                  widget.countryName,
                  style: TextStyle(
                    color: Color(0xFF1E2243),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
          onTap: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Color(0xFFFBFBFD),
      ),
      body: FutureBuilder(
        future: getDataCountry(widget.countryName),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done)
            return Center(
              child: CircularProgressIndicator(),
            );
          return Container(
            height: 420,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 80),
                  child: WidgetCardInfoData(
                    label: snapshot.data['country'],
                    active: snapshot.data['active'],
                    cases: snapshot.data['cases'],
                    deaths: snapshot.data['deaths'],
                    recovered: snapshot.data['recovered'],
                    paddingTop: 80,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        snapshot.data['countryInfo']['flag'],
                        width: 210,
                        height: 140,
                      ),
                    ))
              ],
            ),
          );
        },
      ),
      backgroundColor: Color(0xFFF3F4F9),
    );
  }
}
