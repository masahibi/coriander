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

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // appBar：上のところ
      appBar: AppBar(
        // Text：文字列表示
        title: Text("SampleFlutter!!!"),
        actions: [
          // Icon：アイコン表示
          Icon(Icons.add),
          Icon(Icons.share)],
      ),

      // Container：箱的なもの
      body: Center(
        child: RaisedButton(
          child: Text("次へ"),
          onPressed: (){
            //  ここに押したら反応するコードを書く
            //　画面遷移のコード
          },
        ),
      ),
      //　floatingActionButton：右下のボタン
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
