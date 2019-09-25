import 'dart:math';

import 'package:flutter_web/material.dart';
import 'package:travel/mask_item.dart';
import 'package:travel/navi_bar_item.dart';

import 'online_resource.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  randomColor() => Color.fromARGB(100, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256));

  int indexSelect = 0;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
          children: <Widget>[
            PageView.builder(
              onPageChanged: (index){
                setState(() {
                  indexSelect = index;
                });
              },
              scrollDirection: Axis.vertical,
              itemCount: image_links.length,
              itemBuilder: (context, index){
                return Container(
                   child: Image.network(image_links[index],fit: BoxFit.fill),
              );
           },
            ),
             MaskItem(indexSelelect: indexSelect,numberPage: image_links.length,),
             NavibarItem(),
          ],
      )
    );
  }
}