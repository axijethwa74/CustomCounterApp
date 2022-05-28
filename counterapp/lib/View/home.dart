import 'package:counterapp/Controller/Controller.dart';
import 'package:counterapp/darktheme.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<home> {


   final Controller controller= Controller();
  
  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         useMaterial3: true,
         brightness: Brightness.dark,
      
       ),
       title: 'CounterApp',
       home: Scaffold(
         appBar: AppBar(
          backgroundColor: Colors.black,
           title: const Center(child: Text('CounterApp')),


        

        leading :    IconButton(
             icon: const Icon(Icons.restore),
             onPressed: () { 
               controller.reset();
               setState(() {
                 
               });
               
               },
        
             ),
           actions: [
             
           IconButton(
             icon: const Icon(Icons.add),
             onPressed: () { 
               controller.increment();
               setState(() {
                 
               });
               
               },
        
             ),
              IconButton(
             icon: const Icon(Icons.remove),
             onPressed: () { 
               controller.decrement();
               setState(() {
                 
               });
               
               },
        
             ),
             
             
           ],
         ),
         body: Center(
           child: Text(controller.counter.toString(), 
           style: const TextStyle(fontSize: 50.0, ),
           ),
         ),
         floatingActionButton: FloatingActionButton (
        onPressed: () {
          controller.counter++;
         setState(() {
           
         });

         // Add your onPressed code here!
        },
       
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
      ),
       ),
    );
  }
}

