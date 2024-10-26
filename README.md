

https://github.com/user-attachments/assets/7bbfe5e6-5a74-49df-bf74-e77773558268



https://github.com/user-attachments/assets/2efe09b4-8086-48a3-85dc-632b39b89375

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
