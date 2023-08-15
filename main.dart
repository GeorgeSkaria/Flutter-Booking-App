

import 'package:flutter/material.dart';

void main() 
{runApp( MyApp());}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
   MyApp({super.key});

 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch:Colors.blue,
      ),
      home:  HomeScreen(),
    );
  }
}

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
      HomeScreen({super.key});

String title="BOOKMYTRIP";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.indigo,
      appBar: AppBar(backgroundColor: Colors.blue,),
      body:  SafeArea(
        child: Container(
          decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.red),
          width: double.infinity,
          height: double.infinity,
          child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
               Center(
                 child: Text(
                             title,
                             textAlign:TextAlign.center,
                             style: const TextStyle(
                         color: Colors.white,
                         fontSize:50,
                         fontWeight: FontWeight.bold
                         ),
                         ),
               ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          TextButton(onPressed: (){},
           child: const Text("Voice Assistant",style: TextStyle(color: Colors.white,))),
           IconButton(onPressed: (){}, icon:const Icon(Icons.mic) )
          ]),
          ElevatedButton(onPressed: (){
             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const BookScreen()),
    );},
            child:const Text("Book Ticket here")),

            ]),
        ),
        ),
    );
  }
}

class BookScreen extends StatefulWidget {
  const BookScreen({super.key});

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          const TextField(decoration: InputDecoration(
                    border:OutlineInputBorder(),
                    hintText: 'FROM')
                    ),
          const TextField(decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'TO')
                    ),
          ElevatedButton(onPressed: (){}, child: const Text('Check Available buses'),
          ),
          
                 Align(alignment:AlignmentDirectional.bottomEnd,
                 child: ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("BACK"),
                 )
                 )
              
          
          ],),
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}