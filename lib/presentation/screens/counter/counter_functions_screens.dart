import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {


  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter screen'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            
          },
          icon: const Icon(Icons.refresh_rounded),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),
            Text('Click${(clickCounter > 1) ? 's' : ''}')
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        
        children: [
          FloatingActionButton(
            onPressed:  () {
              setState(() {
                clickCounter = 0;
              });
            },
            child: const Icon(Icons.refresh)
          ),
          const SizedBox(height: 10,),
          FloatingActionButton(
            onPressed:  () {
              setState(() {
                clickCounter++;
              });
            },
            child: const Icon(Icons.plus_one)
          ),
          const SizedBox(height: 10,),
          FloatingActionButton(
            onPressed:  () {
              setState(() {
                clickCounter--;
              });
            },
            child: const Icon(Icons.exposure_minus_1)
          ),
        ],
      )
    );
  }
}
