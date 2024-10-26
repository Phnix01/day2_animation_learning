# day2_animation_learning

à ce jour 2 de l'apprentissage des animations flutter, pour améliorer l'aspect graphique et l'exprérience utilisateur.
je me suis concentré sur les animations explicites qui donnent aux dev une certaines flexibilité par rapport aux animations implicites qui sont assez rigides. 
les éleéments que j'ai eu à manipuler sont : 
- AnimationController 
- Animation
- AnimatedBuilder
- Tween

exemple pour animation sur la taille d'une widget :
late AnimationController _animationController;
late Animation _animation 

@override 
void initState(){
  super.initState();
  _animationController = AnimationController(vsync: this, duration : Duration(seconds:2);
  _animation = Tween<double>(begin 30.0, end: 200).animate(CurvedAnimation(curve:Curves.easeInOut, parent:_animationController));
}
