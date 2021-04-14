import 'package:flutter/material.dart';

class PageContinentOverview extends StatelessWidget {
  final String continent;
  const PageContinentOverview({this.continent, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
            continent,
            style: TextStyle(
              color: Color(0xFF1E2243),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          backgroundColor: Color(0xFFFBFBFD),
          bottom: TabBar(
            labelColor: Color(0xFF4461C2),
            tabs: [
              Tab(
                text: 'Detalhes',
              ),
              Tab(
                text: 'Países',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    margin: EdgeInsets.only(left: 15, right: 15, top: 25),
                    color: Color(0xFFFFFFFF),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 21),
                          child: Text(
                            'Total',
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
                            '845681354',
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
                                      '27%',
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
                                      '27%',
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
                                      '27%',
                                      style: TextStyle(
                                          color: Color(0XFFFF2665),
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
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
                )
              ],
            ),
            Column(
              children: [],
            )
          ],
        ),
        backgroundColor: Color(0xFFF3F4F9),
      ),
    );
  }
}
