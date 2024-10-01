import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Indian Flag"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start, 
            
            children: [
            
              Container(
                width: 5, 
                height: 400, 
                color: Colors.black, 
              ),
              Column(
                children: [
                  Container(
                    width: 250,
                    height: 50,
                    color: Colors.orange,
                  ),
                  Container(
                    width: 250,
                    height: 50,
                    color: Colors.white,
                    child: Center( 
                      child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/1200px-Ashoka_Chakra.svg.png",
                        height: 30, 
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 50,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
