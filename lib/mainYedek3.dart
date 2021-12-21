import 'package:flutter/material.dart';

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
  GlobalKey<FormState> globalKey1=GlobalKey<FormState>();
  GlobalKey<FormState> globalKey2=GlobalKey<FormState>();
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Color renk1=Colors.yellow;

  List<Widget> listWidget=[
    Form(
        key: globalKey1,
        child: MyContainer()),
    Form(
        key:globalKey2 ,
        child: MyContainer(renk:Colors.deepPurpleAccent))
  ];

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: listWidget,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

int count=0;

class MyContainer extends StatefulWidget {

  Color renk;
  MyContainer({@required this.renk=Colors.blue});

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
          print('Widget');
          setState(() {
            count++;
          });
        },
        child: Text(count.toString()));
  }
}
