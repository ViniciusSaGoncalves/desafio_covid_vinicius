import 'package:desafio_covid_vinicius/app/models/ContinentDataModel.dart';
import 'package:desafio_covid_vinicius/app/widgets/WidgetCardInfoData.dart';
import 'package:desafio_covid_vinicius/app/widgets/continents/WidgetCardDatailsContinent.dart';
import 'package:flutter/material.dart';

class WidgetPageContinentDetails extends StatelessWidget {
  const WidgetPageContinentDetails({
    Key key,
    @required this.continent,
  }) : super(key: key);

  final ContinentDataModel continent;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          WidgetCardInfoData(
            label: 'Total',
            active: continent.active,
            cases: continent.cases,
            deaths: continent.deaths,
            recovered: continent.recovered,
          ),
          WidgetCardDatailsContinent(
            labelTitle: 'Hoje',
            labelLeftColumn: 'Casos',
            labelRightColumn: 'Óbitos',
            valueLeftColumn: '+${continent.todayCases.toString()}',
            valueRightColumn: '+${continent.todayDeaths.toString()}',
            colorValueRightColumn: Color(0XFFFF2665),
          ),
          WidgetCardDatailsContinent(
            labelTitle: 'Testes',
            labelLeftColumn: 'Realizados',
            labelRightColumn: 'População',
            valueLeftColumn: continent.tests.toString(),
            valueRightColumn: continent.population.toString(),
          ),
          Padding(padding: EdgeInsets.only(bottom: 25))
        ],
      ),
    );
  }
}
