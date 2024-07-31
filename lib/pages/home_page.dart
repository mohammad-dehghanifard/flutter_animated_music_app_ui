import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // App bar
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: [
                  const Text(
                    "لیست آهنگ ها",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  const Spacer(),
                  Image.asset("assets/images/icon.png")
                ],
              ),
            ),
            // grid view
            Expanded(
                child: GridView.count(
              crossAxisCount: 2,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.orange,
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.orange,
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.orange,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
