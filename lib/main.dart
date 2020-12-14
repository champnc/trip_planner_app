import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    _PageHome(),
    _PageStories(),
    _PageAbout(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Trip Planner'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_stories),
            label: 'stories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined),
            label: 'About',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class _PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.green,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.yellow,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.orange,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: () => {},
        child: Icon(Icons.add_sharp),
      ),
    );
  }
}

class _PageStories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
        'Index 1: Stories'
    );
  }
}

class _PageAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
        'Index 2: About'
    );
  }
}

