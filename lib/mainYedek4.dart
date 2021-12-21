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

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Color renk1=Colors.yellow;

  List<Widget> listWidget=[
    Padding(
      key: UniqueKey(),
      padding: const EdgeInsets.all(8.0),
      child: MyContainer(_buttonStyle),
    ),
    Padding(
      key: UniqueKey(),
      padding: const EdgeInsets.all(8.0),
      child: MyContainer(_buttonStyle1),
    ),
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

final ButtonStyle style =
ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

ButtonStyle buttonStyle=ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
);

ButtonStyle _buttonStyle=ElevatedButton.styleFrom( primary: Colors.red,);
ButtonStyle _buttonStyle1=ElevatedButton.styleFrom( primary: Colors.green,);

class MyContainer extends StatefulWidget {

  ButtonStyle buttonStyle1;
  MyContainer(ButtonStyle buttonStyle1){
    this.buttonStyle1=buttonStyle1;
  }

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: widget.buttonStyle1,
        onPressed: (){
          print('Widget');
          setState(() {
            count++;
          });
        },
        child: Text(count.toString()));
  }
}
