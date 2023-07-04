import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

// class AppKel extends StatefulWidget {
//   const AppKel({super.key});

//   @override
//   State<AppKel> createState() => _AppKelState();

class MyKel extends StatelessWidget {
  const MyKel({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const AppKel(title:'Rizza Maidatul Masfufah-17 (Ganjil)'),
    );
  }
}

class AppKel extends StatefulWidget {
  const AppKel({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AppKel> createState() => _AppKelState();
}

class _AppKelState extends State<AppKel> {
  int _counter = 0;
  String _text = "Ganjil";

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter > 30) {
        _counter = 0;
      }
      _text = "Genap Kelipatan 3: ";
      for (int i = 1; i <= _counter; i++) {
        if (i % 3 == 0 && i % 2 != 1) {
          _text += '${i}, ';
        }
      }
    });
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              _text,
              style: Theme.of(context).textTheme.headline5,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
