import 'package:flutter/material.dart';
import 'package:grocery_shop/screens/home_page.dart';
import 'package:grocery_shop/utils/colors.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 180,
            ),
            Image.asset(
              'assets/first.png',
              height: 300,
              width: 300,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Fast Deleivery at \n  your doorstep',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                    color: Colors.white),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Home deleivery and online reservation \n       system for restuarant and cafe',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              width: double.infinity,
              height: 55,
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  child: const Text("Let's Explore",
                      style: TextStyle(fontSize: 15, color: PrimaryColor))),
            )
          ],
        ),
      ),
    );
  }
}
