import 'ProfilePage.dart';
import 'SalesPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_nejree/HomePage.dart';
import 'package:flutter_application_nejree/ProfilePage.dart';



class NavigatorPage extends StatefulWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
 int selectedIndex = 0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    bottomNavigationBar: BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
       BottomNavigationBarItem(icon: Icon(Icons.discount),label: "Sales"),
      BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),],
    
    currentIndex: selectedIndex,
    onTap: (value){
      setState(() {
      print(value);
      selectedIndex = value;
      print("selected index is: ${selectedIndex}");
       }
      );
     }
    ),

    body: Views[selectedIndex],

    );
  }
}

List Views = [HomePage(),Sales(),ProfilePage(),];