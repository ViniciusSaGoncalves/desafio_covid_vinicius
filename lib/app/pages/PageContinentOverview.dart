import 'package:flutter/material.dart';

class PageContinentOverview extends StatelessWidget {
  final String continent;
  const PageContinentOverview({@required this.continent, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(continent),
    );
  }
}
