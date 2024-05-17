// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  //variable
  final TextEditingController _controller = TextEditingController();
  var message = '';
  //method
  void greet() {
    var userName = _controller.text;
    setState(() {
      message = 'hello $userName';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder()
              ),
            ),
            ElevatedButton(onPressed: greet, child: Text('Greet'))
          ],
        ),
      ),
    );
  }
}
