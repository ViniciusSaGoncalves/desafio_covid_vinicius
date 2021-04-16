import 'package:desafio_covid_vinicius/app/models/ContinentDataModel.dart';
import 'package:desafio_covid_vinicius/app/pages/PageCountryOverview.dart';
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
                    continent.continent,
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
          bottom: TabBar(
            labelColor: Color(0xFF4461C2),
            unselectedLabelColor: Color(0xFF969AA8),
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
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: InkWell(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              PageCountryOverview(
                                  countryName: continent.countries[index]))),
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
                    ),
                  );
                })
          ],
        ),
        backgroundColor: Color(0xFFF3F4F9),
      ),
    );
  }
}
