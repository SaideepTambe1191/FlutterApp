import 'package:flutter/material.dart';

void main() {
  runApp(const PlayerApp());
}

class PlayerApp extends StatefulWidget {
  const PlayerApp({super.key});

  @override
 State<PlayerApp> createState() => _PlayerAppState();
}
class _PlayerAppState extends State<PlayerApp> {
  int _counter=0;
  List<Map> playerList=<Map>[
    {"image":"https://documents.iplt20.com/ipl/IPLHeadshot2024/57.png",
    "name":"MSD"
    },
    {"image":"https://images.hindustantimes.com/rf/image_size_640x362/HT/p1/2014/08/27/Incoming/Pictures/1257209_Wallpaper2.jpg",
    "name":"Suresh Raina"
    },
    {"image":"https://assets.telegraphindia.com/telegraph/2023/Mar/1678836965_57c7769197215ff88fbbb4b52c34856d.gif",
    "name":"Virat Kohli"
    },
    {"image":"https://mc-webpcache.readwhere.in/pro.php?size=large&in=https://mcmscache.epapr.in/post_images/website_326/post_22881743/full.jpg",
    "name":"AB de Villiers"
    },
    {"image":"https://img.etimg.com/thumb/width-1200,height-1200,imgsize-88278,resizemode-75,msid-90020119/news/sports/rockstar-ravindra-jadeja-on-day-2-slams-175-to-put-india-in-command-in-first-test-against-sri-lanka.jpg",
    "name":"Ravindra Jadeja"
    }
  ];
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Players",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Players App"), 
          backgroundColor: Colors.indigo, 
          centerTitle: true,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Image.network(playerList[_counter]["image"],
            height: 400,
            ),
           const SizedBox(
              height: 20,
            ),
            Text(playerList[_counter]["name"],
            style:const TextStyle(
              fontWeight: FontWeight.w900,
            ),
            ),
          ],
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(_counter<playerList.length-1){
            _counter++;
          }else{
            _counter=0;
          }
        setState(() { });
        },
        child:const Icon(Icons.forward) ,

        ),
      ),

    );
  }
}
