import 'package:desafio_covid_vinicius/app/models/ContinentDataModel.dart';
import 'package:desafio_covid_vinicius/app/widgets/continents/widget_page_continent_details.dart';
import 'package:flutter/material.dart';

class PageContinentOverview extends StatelessWidget {
  final ContinentDataModel continent;
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
            continent.continent,
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
            WidgetPageContinentDetails(continent: continent),
            ListView.builder(
                itemCount: continent.countries.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Card(
                      child: ListTile(
                        title: Text(continent.countries[index]),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF969AA8),
                          size: 13,
                        ),
                      ),
                    ),
                  );
                })
            // SingleChildScrollView(
            //   child: ListView.builder(
            //     itemCount: 2,
            //     itemBuilder: (ctx, index) {
            //       return Card(
            //         child: ListTile(
            //           title: Text(continent.countries[index]),
            //           trailing: Icon(
            //             Icons.arrow_forward_ios,
            //             color: Color(0xFF969AA8),
            //             size: 13,
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // )
          ],
        ),
        backgroundColor: Color(0xFFF3F4F9),
      ),
    );
  }
}
