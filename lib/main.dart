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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final TextEditingController _textController = new TextEditingController();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Widget _buildMethod() {
    return Container(
      height: 40,
      margin: EdgeInsets.all(20.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(6.0),
                border: Border.all(
                  color: Colors.black12,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    height: double.infinity,
                    width: 100.0,
                    decoration: BoxDecoration(
                        // color: Colors.black12,
                        border: Border(
                      right: BorderSide(width: 1.0, color: Colors.black12),
                    )),
                    child: TextButton(
                      child: Text("GET"),
                      onPressed: () {
                        print('press get');
                      },
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 6),
                      child: TextField(
                        controller: _textController,
                        decoration: new InputDecoration.collapsed(
                            hintText: "Send a message"),
                      ),
                    ),
                  ),
                  VerticalDivider(
                    width: 1,
                    color: Colors.black12,
                  ),
                  Container(
                    height: double.infinity,
                    width: 100,
                    // decoration: BoxDecoration(
                    //     color: Colors.black12,
                    //     border: Border(
                    //       left: BorderSide(width: 1.0, color: Colors.black12),
                    //     )),
                    child: TextButton(
                      child: Text("Param"),
                      onPressed: () {
                        print('press get');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 6),
            height: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: Colors.blue,
                border: Border.all(color: Colors.black12)),
            child: TextButton(
              child: Text(
                "Send",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                print('press get');
              },
            ),
          ),
          Container(
            height: double.infinity,
            margin: EdgeInsets.only(left: 6),
            decoration: BoxDecoration(
                // color: Colors.black12,
                borderRadius: BorderRadius.circular(6.0),
                border: Border.all(color: Colors.black12)),
            child: TextButton(
              child: Text("Save"),
              onPressed: () {
                print('press get');
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          //_buildMethod(),
          _buildMethod(),
        ],
      ),
    );
  }
}
