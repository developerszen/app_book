import 'package:book_applic/categoria/screens/list_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
    HomeScreen({Key key}) : super(key: key);

    @override
    _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

    int _currentIndex = 0;

    final List<Widget> tabs = [
        Text('Inicio'),
        CategoryListScreen(),
        Text('Perfil'),
    ];


    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text(
                    'Welcome',
                    style: TextStyle(
                        color: Colors.white
                    ),
                ),
                backgroundColor: Color(0xff26CAFD),
                elevation: 0,
            ),
            body: Center(child: tabs[_currentIndex]),
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: _currentIndex,
                items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        title: Text('Inicio'),
                        backgroundColor: Colors.amber
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.apps),
                        title: Text('Categorías'),
                        backgroundColor: Colors.blue
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person),
                        title: Text('Perfil'),
                        backgroundColor: Colors.red
                    ),
                ],
                onTap:(index){
                    setState(() {
                        _currentIndex = index;
                    });
                },
            ),
        );
    }
}