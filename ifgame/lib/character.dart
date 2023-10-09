import 'package:flutter/material.dart';

class Character extends StatelessWidget{
  const Character({super.key});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60,
        width: 60,
        child: Image.asset('assets/images/astronauta.gif'));
  }
}
