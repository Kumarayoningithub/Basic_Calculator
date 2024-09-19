import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
  int _counter = 0;
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = " ";


  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar(
          backgroundColor: Colors.blue,
          title: Text('Basic Calculator'),
        ),
        body: Container(
          color: Colors.blue.shade100,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no1Controller,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no2Controller,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(21.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              var no1 =
                              int.parse(no1Controller.text.toString());
                              var no2 =
                              int.parse(no2Controller.text.toString());
                              var sum = no1 + no2;
                              result = "The sum of $no1 and $no2 is $sum";
                              setState(() {});
                            },
                            child: Text('Add')),
                        ElevatedButton(
                            onPressed: () {
                              var no1 =
                              int.parse(no1Controller.text.toString());
                              var no2 =
                              int.parse(no2Controller.text.toString());
                              var subt = no1 - no2;
                              result = "The subtract of $no1 and $no2 is $subt";
                              setState(() {});
                            },
                            child: Text('Sub')),
                        ElevatedButton(
                            onPressed: () {
                              var no1 =
                              int.parse(no1Controller.text.toString());
                              var no2 =
                              int.parse(no2Controller.text.toString());
                              var mult = no1 * no2;
                              result =
                              "The multiplication of $no1 and $no2 is $mult";
                              setState(() {});
                            },
                            child: Text('Mul')),
                        ElevatedButton(
                            onPressed: () {
                              var no1 =
                              int.parse(no1Controller.text.toString());
                              var no2 =
                              int.parse(no2Controller.text.toString());
                              var div = no1 / no2;
                              result = "The division of $no1 and $no2 is $div";
                              setState(() {});
                            },
                            child: Text('Div')),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(21),
                    child: Text(
                      result,
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
