import 'package:flutter/material.dart';

class Animationcolors extends StatefulWidget {
  const Animationcolors({super.key});

  @override
  State<Animationcolors> createState() => _AnimationcolorsState();
}

class _AnimationcolorsState extends State<Animationcolors>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Color?> _animation;
  bool _isAlreadyChanged = false;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animation =
        ColorTween(begin: Colors.deepOrangeAccent, end: Colors.greenAccent)
            .animate(_animationController);
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Container(
                    width: 200,
                    height: 200,
                    color: _animation.value,
                  );
                })
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_isAlreadyChanged) {
              _animationController.reverse();
            } else {
              _animationController.forward();
            }
            _isAlreadyChanged = !_isAlreadyChanged;
          });
        },
        child: Icon(Icons.chair),
      ),
    );
  }
}
