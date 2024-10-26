import 'package:flutter/material.dart';

class Animationcolors extends StatefulWidget {
  const Animationcolors({super.key});

  @override
  State<Animationcolors> createState() => _AnimationcolorsState();
}

class _AnimationcolorsState extends State<Animationcolors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chair),
      ),
    );
  }
}
