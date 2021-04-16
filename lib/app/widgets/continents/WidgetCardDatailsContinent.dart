import 'package:flutter/material.dart';

class WidgetCardDatailsContinent extends StatelessWidget {
  const WidgetCardDatailsContinent({
    Key key,
    @required this.labelTitle,
    @required this.labelLeftColumn,
    @required this.labelRightColumn,
    @required this.valueRightColumn,
    @required this.valueLeftColumn,
    this.colorValueRightColumn = const Color(0XFF1E2243),
  }) : super(key: key);

  final String labelTitle;
  final String labelLeftColumn;
  final String labelRightColumn;
  final String valueLeftColumn;
  final String valueRightColumn;
  final Color colorValueRightColumn;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 26, left: 15, right: 15),
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
              spreadRadius: 1,
              offset: Offset(0, 3.0), // shadow direction: bottom right
            )
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 21),
              child: Text(
                labelTitle,
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
                        labelLeftColumn,
                        style: TextStyle(
                          color: Color(0XFF969AA8),
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          valueLeftColumn.toString(),
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
                        labelRightColumn,
                        style: TextStyle(
                          color: Color(0XFF969AA8),
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          valueRightColumn.toString(),
                          style: TextStyle(
                            color: colorValueRightColumn,
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
    );
  }
}
