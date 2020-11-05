import 'package:flutter/material.dart';
import 'package:examen/src/Cuadro.dart';


class CuadroWidget extends StatefulWidget {
  CuadroWidget({Key key, this.item}) : super(key: key);
  final Cuadro item;

  @override
  _CuadroWidgetState createState() => _CuadroWidgetState();
}

class _CuadroWidgetState extends State<CuadroWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.amber,
        //borderRadius: BorderRadius.circular(10)
        border: new Border.all(
          color: Colors.black  
        )
      ),
      child: Column(
        children: [
          Expanded(child: Container(width: 0, height: 0,)),
          Text('${widget.item.t1}', textAlign: TextAlign.center),
          Expanded(child: Container(width: 0, height: 0,)),
        ],
      ), 
    );
  }
}