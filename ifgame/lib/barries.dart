import 'package:flutter/material.dart';

class Barrier extends StatelessWidget {
  final size;

  Barrier({super.key, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: size,
      decoration: BoxDecoration(
          border: Border.all(width: 10, color: Colors.green[800]!),
          borderRadius: BorderRadius.circular(15),
          color: Colors.green),
    );
  }
}
