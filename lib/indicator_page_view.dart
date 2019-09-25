import 'package:flutter_web/material.dart';


class IndicatorPageView extends StatelessWidget {

  final int indexSelected;
  final int numberIndicator;

  const IndicatorPageView({this.numberIndicator, this.indexSelected});

  List<Widget> buildIndicator(){
    List<Widget> indicators = List();
    for(int i =0;i<numberIndicator;i++){
      Widget container = Container(
        width: 16,
        height: 16,
        margin: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: indexSelected == i ? Colors.grey: Colors.white,
          shape: BoxShape.circle
        ),
      );
      indicators.add(container);
    }
    return indicators;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Column(
        children: buildIndicator(),
      ),
    );
  }
}