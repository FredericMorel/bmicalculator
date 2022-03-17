import 'package:flutter/material.dart';

class MaCarte extends StatelessWidget {
  final Color couleur;
  final Widget carteChild;

  MaCarte(this.couleur, this.carteChild);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: carteChild,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xFF0D1E33),
        ));
  }
}
