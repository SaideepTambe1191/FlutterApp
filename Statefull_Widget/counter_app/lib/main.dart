import "package:flutter/material.dart";


void main(){
  runApp( const CounterApp());
}
class CounterApp extends StatefulWidget{
  const CounterApp({super.key});
  @override

  State<CounterApp> createState() =>_CounterAppState();
  
}
class _CounterAppState extends State<CounterApp> {
  int _counter = 0;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Counter App',
      home:Scaffold(
        appBar: AppBar(
          title: const Text("Counter App"),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body:Center(
          child:Text("$_counter") ,
          ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          _counter++;
          setState(() {
            
          });
        },
        child: const Icon(Icons.add),
        ),
      )
    );
  }
}