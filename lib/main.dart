import 'package:examen/src/Cuadro.dart';
import 'package:examen/src/WidgetCuadro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _aumentarCounter() {
    if(_counter < 33){
      setState(() {
        _counter++;
      });
    }
    
  }

  void _disminuirCounter(int num) {
    if(_counter > 0){
      setState(() {
        _counter = _counter + num;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  IconButton(onPressed: () => _aumentarCounter(), icon: Icon(Icons.add), color: Colors.green),
                  Text('${_counter}', style: Theme.of(context).textTheme.headline3),
                  IconButton(onPressed: () => _disminuirCounter(-1), icon: Icon(Icons.remove), color: Colors.red),
                ]
              ),
              Container(
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 5,
                  physics: NeverScrollableScrollPhysics(),
                  children: List.generate(_counter, (index){
                    if((index+1)%15 == 0){
                      return CuadroWidget(item: new Cuadro("FaceBook"));
                    }else if((index+1)%5 == 0){
                      return CuadroWidget(item: new Cuadro("Book"));
                    }else if((index+1)%3 == 0){
                      return CuadroWidget(item: new Cuadro("Face"));
                    }
                    else{
                      return CuadroWidget(item: new Cuadro("${index+1}"));
                    }
                    
                  }),
                )
              )
            ],
          ),
        ),
      ),
      
      
      /*Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
               
              children: [
                IconButton(onPressed: () => _aumentarCounter(), icon: Icon(Icons.add), color: Colors.green),
                Text('${_counter}', style: Theme.of(context).textTheme.headline3),
                IconButton(onPressed: () => _disminuirCounter(-1), icon: Icon(Icons.remove), color: Colors.red),
              ]
            ),
            Container(
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                children: List.generate(_counter, (index){
                  return CuadroWidget(item: new Cuadro("${_counter}"));
                }),
              )
            )
          ],
        ),
      ),*/
      
    );
  }
}
