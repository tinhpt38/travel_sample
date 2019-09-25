import 'package:flutter_web/material.dart';

import 'online_resource.dart';


class NavibarItem extends StatelessWidget {

List<Widget> naviBar(){
    return navi_title.asMap().map((index, value) => MapEntry(index, Container(
      padding: EdgeInsets.symmetric(horizontal: 42),
      child: Text(
        value,
        style: TextStyle(
          color: Colors.white
        ),
      ),
    ))).values.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      margin: EdgeInsets.only(right: 92),
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
         children: <Widget>[
           Row(
             children: <Widget>[
               Container(
                 margin: EdgeInsets.symmetric(horizontal: 16),
                 width: 20,
                 child: Image.network(search_icon),
               ),
               Container(
                 margin: EdgeInsets.symmetric(horizontal: 16),
                 width: 20,
                 child: Image.network(delide_mathematical_single),
               ),
             ],
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: naviBar(),
           ),
         ],
      )
    );
  }
}