import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Slide To Act Tutorial'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: SlideAction(
            borderRadius: 0,
            innerColor: Colors.blue[900],
            outerColor: Colors.blue,

            // Let's change the icon and the icon color
            sliderButtonIcon: const Icon(
              Icons.arrow_circle_right,
              color: Colors.white,
            ),

            text: "Slide Me",
            onSubmit: () {
              // Here you can add whatever action you want to perform after the sliding
              // maybe to navigate to another page or to do any other thing
            },
          ),
        ));
  }
}
