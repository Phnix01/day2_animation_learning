import 'package:day2_animation_learning/animationColors.dart';
import 'package:day2_animation_learning/animationExp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animations Explicites',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Jour 2 : Animations Explicites'),
        ),
        body: Center(
          child: Animationcolors(),
        ),
      ),
    );
  }
}

class MyAnimatedBox extends StatefulWidget {
  @override
  _MyAnimatedBoxState createState() => _MyAnimatedBoxState();
}

class _MyAnimatedBoxState extends State<MyAnimatedBox>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialisation de l'AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2), // Durée de l'animation
    );

    // Définition d'un Tween (interpolation entre 50 et 200)
    _animation = Tween<double>(begin: 50.0, end: 200.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    // Démarrage automatique de l'animation
    _controller.forward();
  }

  @override
  void dispose() {
    // Nettoyage du contrôleur d'animation lorsque le widget est détruit
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          width: _animation.value, // On utilise la valeur de l'animation
          height: _animation.value,
          color: Colors.blue,
        );
      },
    );
  }
}
