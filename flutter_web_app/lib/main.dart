import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            MyAppBar(),
            const Expanded(
              child: Center(
                child: Text('Web App Content'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      color: Colors.blue, // Background color of the app bar
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            child: const Text(
              'LOGO',
              style: TextStyle(
                color: Colors.white, // Text color
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              // Handle menu button tap
            },
          ),
          InkWell(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Home',
                style: TextStyle(
                  color: Colors.white, // Text color
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          InkWell(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Layouts',
                style: TextStyle(
                  color: Colors.white, // Text color
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          InkWell(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Products',
                style: TextStyle(
                  color: Colors.white, // Text color
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          InkWell(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Pages',
                style: TextStyle(
                  color: Colors.white, // Text color
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          InkWell(
            child: const Icon(
              Icons.search,
              color: Colors.white, // Icon color
              size: 30.0,
            ),
            onTap: () {
              // Handle search button tap
            },
          ),
        ],
      ),
    );
  }
}
