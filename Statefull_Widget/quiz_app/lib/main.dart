import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizApp(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}
class QuizApp extends StatefulWidget{
  const QuizApp({super.key});
  @override
  State createState() => _QuizAppState();
}
class _QuizAppState extends State{
  List<Map> allQuestions=[
    {
      "question":"How many bones are there in the adult human body?",
     "options":['186','206' ,'226' ,'246'],
     "explanation":"In Human Body There are  206 bones",
     "answer":1,
    },
     {
      "question":"What parent company owns both Instagram and WhatsApp?",
     "options":["Google","Meta","Apple" ,"Amazon"],
     "explanation":"Meta owns both Instagram and WhatsApp",
     "answer":1,
    },
     {
      "question":"What is the normal range for human body temperature in Celsius?",
     "options":["34-35","35-36 ","36-37" ,"38-39"],
     "explanation":"Normal body temperature is 36.5-37.5",
     "answer":2,
    },
     {
      "question":"What is the capital city of Australia?",
     "options":["Sydney","Brisbane","Melbourne" ,"canberra"],
     "explanation":"The capital city of Australia is Canberra",
     "answer":3,
    },
     {
      "question":"In which city is the Eiffel Tower located?",
     "options":["India"," Australia","France" ,"Paris"],
     "explanation":"The Eiffel Tower is located in Paris",
     "answer":3,
    }
  ];
  int currentQuestionIndex=0;
  int selectedAnswerIndex=-1;
  int currentScore=0;
  WidgetStateProperty<Color?>checkAnswer(int answerIndex){
    if(selectedAnswerIndex!=-1){
      if(answerIndex==allQuestions[currentQuestionIndex]["answer"]){
        currentScore++;
        return const WidgetStatePropertyAll(Colors.green);
       
      }else if(selectedAnswerIndex==answerIndex){
        
        currentScore--;
        return const WidgetStatePropertyAll(Colors.red);
        
      }else{
        return const WidgetStatePropertyAll(null);
      }
    }else{
      return const WidgetStatePropertyAll(null);
    }
  }
  bool questionPage=true;
  @override
  Widget build(BuildContext context){
    return isQuestionScreen();
  }
  Scaffold isQuestionScreen(){
    if(questionPage==true){
      return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App",
        style: TextStyle(fontSize: 25,
        fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        backgroundColor:const Color.fromARGB(255, 134, 198, 225),
      ),
      body:  Column(children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const SizedBox(
          width: 120,

        ),
        Text(
          "Question:${currentQuestionIndex+1}/${allQuestions.length}",
          style: const TextStyle(fontSize: 20,
          fontWeight: FontWeight.w700
          ),
        ),
          ],

        ),
       const SizedBox(
          height: 50,
        ),
        SizedBox(
          width: 360,
          height: 60,
          child: Text(
            allQuestions[currentQuestionIndex]["question"],
            style: const TextStyle(fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 117, 50, 2)
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          width: 350,
          height: 50,
          child: ElevatedButton(
            style: ButtonStyle(backgroundColor: checkAnswer(0)),
            onPressed:() {
              if(selectedAnswerIndex==-1){
                selectedAnswerIndex=0;
                setState(() {
                });
              }

          },
          child: Text(
            allQuestions[currentQuestionIndex]["options"][0],
            style: const TextStyle(fontSize: 20,
            fontWeight: FontWeight.w500,
            ),
          ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
         SizedBox(
          width: 350,
          height: 50,
          child: ElevatedButton(
            style: ButtonStyle(backgroundColor: checkAnswer(1)),
            onPressed:() {
              if(selectedAnswerIndex==-1){
                selectedAnswerIndex=1;
                setState(() {
                });
              }

          },
          child: Text(
            allQuestions[currentQuestionIndex]["options"][1],
            style: const TextStyle(fontSize: 20,
            fontWeight: FontWeight.w500,
            ),
          ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
         SizedBox(
          width: 350,
          height: 50,
          child: ElevatedButton(
            style: ButtonStyle(backgroundColor: checkAnswer(2)),
            onPressed:() {
              if(selectedAnswerIndex==-1){
                selectedAnswerIndex=2;
                setState(() {
                });
              }

          },
          child: Text(
            allQuestions[currentQuestionIndex]["options"][2],
            style: const TextStyle(fontSize: 20,
            fontWeight: FontWeight.w500,
            ),
          ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
         SizedBox(
          width: 350,
          height: 50,
          child: ElevatedButton(
            style: ButtonStyle(backgroundColor: checkAnswer(3)),
            onPressed:() {
              if(selectedAnswerIndex==-1){
                selectedAnswerIndex=3;
                setState(() {
                });
              }

          },
          child: Text(
            allQuestions[currentQuestionIndex]["options"][3],
            style: const TextStyle(fontSize: 20,
            fontWeight: FontWeight.w500,
            ),
          ),
          ),
        ),
       
      ],
      ),
      floatingActionButton:FloatingActionButton(onPressed: () {
        if(selectedAnswerIndex!=-1){
        if(currentQuestionIndex<allQuestions.length-1){
          currentQuestionIndex++;
          setState(() { }
          );
          }else{
          questionPage=false;
        }
        }
        selectedAnswerIndex=-1;
        setState(() {
          
        });
      },
      backgroundColor: const Color.fromARGB(255, 177, 228, 247),
      child: const Icon(Icons.arrow_forward_ios,
      color: Color.fromARGB(31, 0, 0, 0),
      size: 50,
      weight: 50,
      ),
      ),
    );
    }else{
      return Scaffold(
        appBar: AppBar(
          title: const Text('Result',
          style: TextStyle(fontSize: 25,
          fontWeight: FontWeight.w900)
          ),
          centerTitle: true,
          backgroundColor:const Color.fromARGB(255, 134, 198, 225),
          
           
        ),
        body:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children:  [
              
             const Text("Congratulations !!!!",
             
             style: TextStyle(fontWeight: FontWeight.w900,fontSize:35,
             color: Color.fromARGB(255, 232, 49, 49)
              ),
             ),
            const  SizedBox(height: 30),
              Image.network("https://static.vecteezy.com/system/resources/thumbnails/032/999/982/small_2x/realistic-golden-trophy-ai-generative-free-png.png"),
             const SizedBox(height: 30,),
              Text("Score : $currentScore/${allQuestions.length}",
              style:const TextStyle(
                fontWeight: FontWeight.w900,fontSize:30 ,
                color: Color.fromARGB(255, 7, 163, 20),
              ),
              ),
             const SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: () {
                currentQuestionIndex=0;
                selectedAnswerIndex=-1;
                currentScore=0;
                questionPage=true;
                setState(() {
                  
                });
              },
              child:const Text("Retry",
              style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),
              ),
              )
            ],
          ),
      );
    }
  }
}