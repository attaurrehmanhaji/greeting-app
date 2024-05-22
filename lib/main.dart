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
  TextEditingController tecName = TextEditingController(text: "");
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 208, 208, 208),
        appBar: AppBar(
          title: const Text("Greeting App"),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Greeting App",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Enter your name",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                  padding: EdgeInsets.all(5),
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.amber),
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.bottom,
                    textCapitalization: TextCapitalization.words,
                    controller: tecName,
                  )),
              ElevatedButton(onPressed: func, child: Text("Submit")),
              name == "" ? Text("") : Text("Hello $name")
            ],
          ),
        ));
  }

  void func() {
    setState(() {
      name = tecName.text;
    });
  }
}
