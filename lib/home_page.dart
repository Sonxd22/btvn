import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
 const HomePage({Key? key}) : super(key: key);

 @override
 State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 int value = 0;

 void incrementValue() {
  setState(() {
   value++;
  });
 }

 void decrementValue() {
  setState(() {
   value--;
  });
 }

 @override
 Widget build(BuildContext context) {
  return Scaffold(
   appBar: AppBar(
    leading: const Icon(Icons.arrow_back_outlined),
    title: const Text('My App'),
    backgroundColor: Colors.lightBlueAccent,
    actions: const [
     Icon(Icons.notifications),
     Icon(Icons.settings),
    ],
   ),
   body: Center(
    child: Column(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
      Text(
       'Value: $value',
       style: const TextStyle(
        fontSize: 24,
       ),
      ),
      Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
        IconButton(
         onPressed: decrementValue,
         icon: const Icon(Icons.remove),
        ),
        Text(
         '$value',
         style: const TextStyle(
          fontSize: 24,
         ),
        ),
        IconButton(
         onPressed: incrementValue,
         icon: const Icon(Icons.add),
        ),
       ],
      ),
     ],
    ),
   ),
  );
 }
}