import 'package:flutter/material.dart';

class Animationexp extends StatefulWidget {
  const Animationexp({super.key});

  @override
  State<Animationexp> createState() => _AnimationexpState();
}

class _AnimationexpState extends State<Animationexp>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _animation = Tween<double>(begin: 30.0, end: 250.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    // Démarrer l'animation et la rendre réversible
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose(); // Dispose du contrôleur
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Explicite'),
      ),
      body: SafeArea(
        child: Center(
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Container(
                width: _animation.value, // Lié à la valeur de l'animation
                height: _animation.value, // Lié également
                color: Colors.deepOrangeAccent,
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Inverser l'animation pour l'agrandir ou la réduire
          _animationController.isCompleted
              ? _animationController.reverse()
              : _animationController.forward();
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
