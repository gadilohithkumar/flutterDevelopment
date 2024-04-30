import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Login_Page.dart';

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
      home:
          //  const MyApp()
          const MyHomePage(
        title: 'Cerebra Development Team',
      ),
      // const MyContainer()
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Counter Increament And Descrment",
              style: TextStyle(
                  backgroundColor: Colors.lime,
                  height: 2,
                  inherit: true,
                  color: Colors.purpleAccent,
                  fontSize: 25),
            ),
            // const Text(
            //   'You have pushed the button this many times:',
            // ),
            Text(
              '$_counter',
              style: const TextStyle(
                  fontSize: 60, // Font size
                  color: Colors.red),
              // Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.green,
                      fixedSize: const Size(100, 60)),
                  onPressed: () {
                    _incrementCounter();
                  },
                  child: const Text('Add'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.green,
                      fixedSize: const Size(100, 60)),
                  onPressed: () {
                    _decrementCounter();
                  },
                  child: const Text('Sub'),
                )
              ],
            )
          ],
        ),
      ),

      // floatingActionButton: FloatingActionButton(
      //   hoverColor: const Color.fromARGB(200, 200, 100, 200),
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
              backgroundColor: Color.fromARGB(255, 129, 44, 34)),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),
      // backgroundColor: const Color.fromARGB(200, 157, 7, 50),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
