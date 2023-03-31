import 'package:flutter/material.dart';

void main() {

  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('Rich'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: const Center(
        child: Image(
          image: NetworkImage(
              'https://images.squarespace-cdn.com/content/v1/53670f0ae4b05b7433d4706b/1556665147192-OQF9C3NIZUMVYADJED6L/Diamond_round_brilliant.jpeg?format=2500w'),
        ),
      ),
    ),
  ));
}
