import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column Scenario",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 246, 108, 2),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: 200,
                color: const Color.fromARGB(255, 207, 185, 17),
              )
            ],
          ),
        ),
      ),
    );
  }
}
