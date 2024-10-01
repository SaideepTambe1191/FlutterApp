import 'package:flutter/material.dart';

void main() {
  runApp(const ContainerColorApp());
}

class ContainerColorApp extends StatefulWidget {

  const ContainerColorApp({super.key});
  @override
  State<ContainerColorApp> createState()=> _ContainerColorApp();

}

class _ContainerColorApp extends State<ContainerColorApp>{
  bool colorChange=true;
 @override
  Widget build(BuildContext context){
   
    return MaterialApp(
      title: 'Container Color',
      home: Scaffold(
        appBar: AppBar(
          title:const  Text('Container Color'),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color:colorChange? Colors.deepOrange:Colors.brown,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            if(colorChange==true){
              colorChange=false;
            }else{
              colorChange=true;
            }
            setState(() { });
          } ,
          child:const Icon(Icons.add),
          ),
        ),
    );
  }
}