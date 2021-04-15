import 'package:desafio_covid_vinicius/app/models/ContinentDataModel.dart';
import 'package:desafio_covid_vinicius/app/widgets/WidgetCardInfoData.dart';
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
          SizedBox(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 26, left: 15, right: 15),
              color: Color(0xFFFFFFFF),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 21),
                    child: Text(
                      'Hoje',
                      style: TextStyle(
                        color: Color(0XFF1E2243),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 32, bottom: 44),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Casos',
                              style: TextStyle(
                                color: Color(0XFF969AA8),
                                fontSize: 16,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                '+${continent.todayCases}',
                                style: TextStyle(
                                  color: Color(0XFF1E2243),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Óbitos',
                              style: TextStyle(
                                color: Color(0XFF969AA8),
                                fontSize: 16,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                '+${continent.todayDeaths}',
                                style: TextStyle(
                                  color: Color(0XFFFF2665),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 26, left: 15, right: 15, bottom: 25),
              color: Color(0xFFFFFFFF),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 21),
                    child: Text(
                      'Testes',
                      style: TextStyle(
                        color: Color(0XFF1E2243),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 32, bottom: 44),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Realizados',
                              style: TextStyle(
                                color: Color(0XFF969AA8),
                                fontSize: 16,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                '${continent.tests}',
                                style: TextStyle(
                                  color: Color(0XFF1E2243),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'População',
                              style: TextStyle(
                                color: Color(0XFF969AA8),
                                fontSize: 16,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                '${continent.population}',
                                style: TextStyle(
                                  color: Color(0XFF1E2243),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
