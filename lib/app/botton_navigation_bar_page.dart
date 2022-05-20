import 'package:flutter/material.dart';
import 'package:flutter_material_3/app/pages.dart';

class BottonNavigationBarPage extends StatefulWidget {
  const BottonNavigationBarPage({Key? key}) : super(key: key);

  @override
  State<BottonNavigationBarPage> createState() => _BottonNavigationBarPageState();
}

class _BottonNavigationBarPageState extends State<BottonNavigationBarPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Center(child: Text('Material 2')),
      ),
      body: Center(
        child: Pages.items.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Customers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'Mais',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}