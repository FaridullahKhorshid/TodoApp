import 'package:todoapp/fab_with_icons.dart';
import 'package:todoapp/fab_bottom_app_bar.dart';
import 'package:todoapp/layout.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'BottomAppBar with FAB'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  String _lastSelected = 'TAB: 0';

  void _selectedTab(int index) {
    setState(() {
      _lastSelected = 'TAB: $index';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(
          _lastSelected,
          style: TextStyle(fontSize: 32.0),
        ),
      ),
      bottomNavigationBar: FABBottomAppBar(
        centerItemText: 'A',
        color: Colors.grey,
        selectedColor: Colors.red,
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: _selectedTab,
        items: [
          FABBottomAppBarItem(iconData: Icons.menu, text: 'This'),
          FABBottomAppBarItem(iconData: Icons.layers, text: 'Is'),
          FABBottomAppBarItem(iconData: Icons.dashboard, text: 'Bottom'),
          FABBottomAppBarItem(iconData: Icons.info, text: 'Bar'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(
          Icons.add,
          size: 50,
        ),
        backgroundColor: Colors.green,
      ),
    );
  }

  // Widget _buildFab(BuildContext context) {
  //   final icons = [Icons.sms, Icons.mail, Icons.phone];
  //   return AnchoredOverlay(
  //     showOverlay: true,
  //     overlayBuilder: (context, offset) {
  //       return CenterAbout(
  //         position: Offset(offset.dx, offset.dy - icons.length * 35.0),
  //         child: FabWithIcons(
  //           icons: icons,
  //           onIconTapped: _selectedFab,
  //         ),
  //       );
  //     },
  //     child: FloatingActionButton(
  //       onPressed: () {},
  //       tooltip: 'Increment',
  //       child: Icon(Icons.add),
  //       elevation: 2.0,
  //     ),
  //   );
  // }
}
