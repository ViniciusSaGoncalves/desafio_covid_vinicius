import 'package:flutter/material.dart';

class WidgetCardInfoData extends StatelessWidget {
  const WidgetCardInfoData(
      {Key key,
      @required this.cases,
      @required this.label,
      @required this.active,
      @required this.deaths,
      @required this.recovered,
      this.paddingTop = 21})
      : super(key: key);

  final String label;
  final int cases;
  final int active;
  final int deaths;
  final int recovered;
  final double paddingTop;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF1100000D),
              blurRadius: 6,
              spreadRadius: 2,
              offset: Offset(0, 3.0), // shadow direction: bottom right
            )
          ],
        ),
        margin: EdgeInsets.only(left: 15, right: 15, top: 25),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: paddingTop),
              child: Text(
                label,
                style: TextStyle(
                  color: Color(0XFF1E2243),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Text(
                'Total de casos',
                style: TextStyle(
                  color: Color(0XFF969AA8),
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                cases.toString(),
                style: TextStyle(
                  color: Color(0XFF1E2243),
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 37, bottom: 46),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ativos',
                        style: TextStyle(
                          color: Color(0XFF969AA8),
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          '${(active * 100 / cases).round()}%',
                          style: TextStyle(
                              color: Color(0XFF4461C2),
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Curados',
                        style: TextStyle(
                          color: Color(0XFF969AA8),
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          '${(recovered * 100 / cases).round()}%',
                          style: TextStyle(
                              color: Color(0XFF5FD92B),
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                          '${(deaths * 100 / cases).round()}%',
                          style: TextStyle(
                            color: Color(0XFFFF2665),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
