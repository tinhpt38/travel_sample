import 'package:flutter_web/material.dart';
import 'package:travel/indicator_page_view.dart';

import 'online_resource.dart';


class MaskItem extends StatefulWidget {
  final int numberPage;
  final int indexSelelect;

  const MaskItem({Key key, this.numberPage, this.indexSelelect}) : super(key: key);

  _MaskItemState createState() => _MaskItemState();
}



class _MaskItemState extends State<MaskItem> {

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Row(
         children: <Widget>[
           Expanded(
             flex: 1,
             child: Container(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                 Container(
                        child: Image.network(dev_logo),
                 ),
                 Spacer(),
                 Container(
                   margin: EdgeInsets.all(18),
                  child: Image.network(lili_logo),
                   ),
               ],),
             ),
           ),
           Expanded(
             flex: 6,
             child: Container(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: Text("Adventure",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 64
                    ),),
                  ),
                  Container(
                    child: Text(lorem,style: TextStyle(
                      color: Colors.white,
                      fontSize: 12
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 32),
                      child: GestureDetector(
                      onTap: null,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2)
                        ),
                        child: Text("Exploer".toUpperCase(),style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ),
                  Container(
                    height: 44,
                  ),
                ],
               ),
             ),
           ),
           Expanded(
             flex: 3,
             child: Container(),
           ),
           Expanded(
             flex: 2,
             child: 
               Container(
                 child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Color.fromARGB(40, Colors.white.red, Colors.white.green, Colors.white.blue),
                      ),
                    ),
                     Expanded(
                      flex: 1,
                      child: Container(
                        color: Color.fromARGB(30, Colors.black.red, Colors.black.green, Colors.black.blue),
                      ),
                    ),
                     Expanded(
                      flex: 1,
                      child: Container(
                        color: Color.fromARGB(80, Colors.black12.red, Colors.black12.green, Colors.black12.blue),
                      ),
                    ),
                  ],
                 ),
               ),
           ),
           Expanded(
             flex: 1,
             child: Container(
               margin: EdgeInsets.symmetric(vertical: 16),
               child: Row(
                 children: <Widget>[
                   Expanded(flex: 1,child: Container()),
                   Expanded(flex: 1,child: Column(
                   crossAxisAlignment: CrossAxisAlignment.end,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     Container(
                       child: Column(
                        children: <Widget>[
                          Container(
                            child: Image.network(double_arrow),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 16),
                            child: Image.network(arrow_down),
                          ),
                        ],
                       )
                     ),
                     Container(
                       child: IndicatorPageView(indexSelected: widget.indexSelelect,numberIndicator: widget.numberPage),
                     ),
                     Container(
                       child: Image.network(arrow_white),
                     )
                   ],
                 ),),
                 Expanded(flex: 1,child: Container()),
                 ],
               ),
             )

           )
         ],
       ),
    );
  }
}