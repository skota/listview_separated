import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Listview Separator'),
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
  List<String> fruits = [
    "apples",
    "apricots",
    "avocado",
    "banana",
    "black berries",
    "blue berries",
    "breadfruit",
    "black currant",
    "cantaloupe",
    "carambola",
    "cherimoya",
    "cherries",
    "clementine",
    "coconut",
    "cranberries",
    "custard apples",
    "date fruit",
    "durian",
    "elder berries",
    "Feijoa",
    "figs",
    "gooseberries",
    "grape fruit",
    "grapes",
    "guava",
    "honeydew",
    "jackfruit",
    "java plum",
    "jujube fruit",
    "kiwifruit",
    "kumquat",
    "lemon",
    "lime"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.separated(
          itemCount: 33,
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Icon(Icons.check_circle_outline),
              title: Text(fruits[index]),
              trailing: Icon(Icons.chevron_right),
            );
          },
        ),
      ),
    );
  }
}
