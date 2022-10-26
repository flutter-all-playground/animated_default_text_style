import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Default Text Style',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 74)),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _switch = true;
  Color _color = Colors.red;
  double _size = 32;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Default Text Style'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedDefaultTextStyle(
              style: TextStyle(
                color: _color,
                fontSize: _size,
              ),
              duration: const Duration(seconds: 1),
              child: const Text('AnimatedDefaultTextStyle'),
            ),
            TextButton(
              onPressed: () => setState(() {
                _size = _switch ? 18 : 32;
                _color = _switch ? Colors.blue : Colors.red;
                _switch = !_switch;
              }),
              child: const Text('Switch'),
            ),
          ],
        ),
      ),
    );
  }
}
