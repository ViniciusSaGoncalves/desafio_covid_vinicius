import 'package:desafio_covid_vinicius/app/pages/PageContinentOverview.dart';
import 'package:desafio_covid_vinicius/app/utils/imgPaths.dart';
import 'package:flutter/material.dart';

class ContinentCardItemList extends StatelessWidget {
  final String continent;
  final int countries;
  const ContinentCardItemList(
      {@required this.continent, @required this.countries, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 15, right: 15, top: 10),
      child: InkWell(
        onTap: () => PageContinentOverview(continent: continent),
        child: ListTile(
          leading: Image(image: AssetImage(ImgPath.getPathImg(continent))),
          title: Text(
            continent,
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xFF1E2243)),
          ),
          subtitle: Text(
            '$countries países',
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
    );
  }
}
