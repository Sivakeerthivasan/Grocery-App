import 'package:flutter/material.dart';
import 'package:grocery_shop/screens/header_part.dart';
import 'package:grocery_shop/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        unselectedItemColor: Colors.green[200],
        selectedItemColor: PrimaryColor,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notification"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "favorite")
        ],
      ),
      body: ListView(
        children: const [
          SizedBox(
            height: 15,
          ),
          HeaderPart()
        ],
      ),
    );
  }
}
