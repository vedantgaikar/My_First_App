import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 0, 78, 146),
              Color.fromARGB(255, 0, 4, 41),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const Center(
          child: Text(
            'Hello World',
            style: TextStyle(color: Colors.white, fontSize: 30, ),
          ),
        ),
      ),
    ),
  ));
}
