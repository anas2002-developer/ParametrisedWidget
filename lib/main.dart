import 'package:creating_parametrised_widget/widgets/btn_rounded.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center
        ,
        children: [
          BtnRounded(btnName: "Rounded Button",icon: Icon(Icons.directions_bike_rounded), voidCallback: (){
            print("Callback Func()1 called");
          },
          textStyle: TextStyle(fontSize: 22, color: Colors.white),
          ),
          Container(height: 10,),
          BtnRounded(btnName: "Another Button",icon: Icon(Icons.fire_truck_sharp, color: Colors.white,), bgColor: Colors.deepPurpleAccent.shade200, voidCallback: (){
            print("Callback Func()2 called");
          },
            textStyle: TextStyle(fontSize: 22, color: Colors.white),
          ),
        ],
      )
    );
  }
}
