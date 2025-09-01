import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen>  with SingleTickerProviderStateMixin{
  //1. SingleTickerProviderStateMixin- Drives animation/ only one animation
  late AnimationController _animationController; //Conductor for animation
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;
  //2. late- Delayed initialization- Initialized before used -  holds current state of animation

  @override
  void initState() { //InitState- called once.
    // TODO: implement initState
    super.initState();

    //ensures animation only runs when it appears on screen
    _animationController = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 1200),
    );
    //
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: const Interval(0.0, 0.6, curve: Curves.easeOut),
      ),
    );

    //
    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: const Interval(0.0, 0.6, curve: Curves.easeOut),
      ),
    );
    _animationController.forward();


  }

  //dispose method- called when widget is removed from widget tree permanently. frees memory.
  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
