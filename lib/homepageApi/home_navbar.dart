import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

class Navbar extends StatefulWidget {
  Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}
enum _SelectedTab{ NoteList, favorite, search, person}

class _NavbarState extends State<Navbar> {
  var _selectedTab = _SelectedTab.NoteList;
  void _selectPage(int i ){
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: DotNavigationBar(
        currentIndex:_SelectedTab.values.indexOf(_selectedTab),
        onTap:_selectPage,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        
        items: [

        DotNavigationBarItem(icon: Icon(Icons.home)),
        DotNavigationBarItem(icon: Icon(Icons.home)),
        DotNavigationBarItem(icon: Icon(Icons.home)),
        DotNavigationBarItem(icon: Icon(Icons.home))
      ],),

    );
  }
}