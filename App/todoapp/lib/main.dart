import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Todo App'),
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5,
        child: new Scaffold(
          appBar: AppBar(
            title: Text('Todo'),
          ),
          body: TabBarView(
            children: getTabViews(), // get all tab view
          ),
          bottomNavigationBar: new Container(
            height: 60,
            child: new TabBar(
              tabs: getTabs(), // get the nav items
              labelColor: Colors.cyan,
              unselectedLabelColor: Colors.grey,
            ),
          ),
          backgroundColor: Colors.cyan[50],
        ),
      ),
    );
  }

  getTabViews() {
    return [
      new Container(
        color: Colors.yellow,
      ),
      new Container(
        color: Colors.orange,
      ),
      new Container(
        color: Colors.lightGreen,
      ),
      new Container(
        color: Colors.red,
      ),
      new Container(
        color: Colors.blue,
      ),
    ];
  }

  getTabs() {
    return [
      Tab(
        icon: new Icon(
          Icons.home,
          size: 30,
        ),
      ),
      Tab(
        icon: new Icon(
          Icons.rss_feed,
          size: 30,
        ),
      ),
      Tab(
        icon: new Container(
          child: Icon(Icons.add),
        ),
      ),
      Tab(
        icon: new Icon(
          Icons.perm_identity,
          size: 30,
        ),
      ),
      Tab(
        icon: new Icon(
          Icons.settings,
          size: 30,
        ),
      )
    ];
  }
}
