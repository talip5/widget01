import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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

Color color0=Colors.green;
Color color1=Colors.green;
Color color2=Colors.green;
Color color3=Colors.green;
Color color4=Colors.green;
Color color5=Colors.green;

String label0='label0';
String label1='label1';
String label2='label2';
String label3='label3';
String label4='label4';
String label5='label5';

bool press0=false;
bool press1=true;
bool press2=true;
bool press3=true;
bool press4=true;
bool press5=true;


class _MyHomePageState extends State<MyHomePage> {

  MyContainer myContainer0 = MyContainer(color0,label0,press0);
  MyContainer myContainer1 = MyContainer(color1,label1,press1);
  MyContainer myContainer2 = MyContainer(color2,label2,press2);
  MyContainer myContainer3 = MyContainer(color3,label3,press3);
  MyContainer myContainer4 = MyContainer(color4,label4,press4);
  MyContainer myContainer5 = MyContainer(color5,label5,press5);


  void _incrementCounter() {
    setState(() {
    color0=Colors.red;
    label0='label035';
     myContainer0 = MyContainer(color0,label0,press0);
     color1=Colors.pink;
     label1='label135';
     myContainer1 = MyContainer(color1,label1,press1);
      print('Color');
    });
  }

 void pageColor(){
    setState(() {

    color0=Colors.green;
    color1=Colors.green;
    color2=Colors.green;
    color3=Colors.green;
    color4=Colors.green;
    color5=Colors.green;

    label0='';
    label1='';
    label2='';
    label3='';
    label4='';
    label5='';

    press0=false;
    press1=true;
    press2=true;
    press3=true;
    press4=true;
    press5=true;

    myContainer0 = MyContainer(color0,label0,press0);
    myContainer1 = MyContainer(color1,label1,press1);
    myContainer2 = MyContainer(color2,label2,press2);
    myContainer3 = MyContainer(color3,label3,press3);
    myContainer4 = MyContainer(color4,label4,press4);
    myContainer5 = MyContainer(color5,label5,press5);


    });
    print('PageColor');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            //children: listWidget,
          children: [
            myContainer0,
            myContainer1,
            myContainer2,
            myContainer3,
            myContainer4,
            myContainer5,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:pageColor,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

int count = 0;

class MyContainer extends StatefulWidget {
  Color renk;
  String label;
  bool press;
  MyContainer(Color renk,String label,bool press) {
    this.renk = renk;
    this.label=label;
    this.press=press;
  }

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(primary: widget.renk),
        onPressed: () {
          print('False');
          setState(() {
            widget.label='new Value';
          });
          },
        child: Text(widget.label)
    );
  }
}
