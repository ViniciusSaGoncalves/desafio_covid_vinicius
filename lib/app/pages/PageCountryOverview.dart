import 'package:desafio_covid_vinicius/app/models/country_data_model.dart';
import 'package:desafio_covid_vinicius/app/widgets/WidgetCardInfoData.dart';
import 'package:flutter/material.dart';

class PageCountryOverview extends StatelessWidget {
  final CountryDataModel country;
  const PageCountryOverview({this.country, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF1E2243),
            size: 20,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          country.country,
          style: TextStyle(
            color: Color(0xFF1E2243),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        backgroundColor: Color(0xFFFBFBFD),
      ),
      body: Stack(
        children: [
          WidgetCardInfoData(
            label: country.country,
            active: country.active,
            cases: country.cases,
            deaths: country.deaths,
            recovered: country.recovered,
          ),
        ],
      ),
      backgroundColor: Color(0xFFF3F4F9),
    );
  }
}
