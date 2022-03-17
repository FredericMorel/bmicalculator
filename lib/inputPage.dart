import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'selectGenre.dart';
import 'maCarte.dart';

const activeColor = Color(0xFF1D1E33);

class InputPages extends StatefulWidget {
  const InputPages({Key? key}) : super(key: key);

  @override
  State<InputPages> createState() => _InputPagesState();
}

class _InputPagesState extends State<InputPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("BMI CALCULATOR")),
        foregroundColor: Color.fromARGB(255, 230, 230, 230),
        backgroundColor: Color.fromARGB(255, 6, 12, 36),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MaCarte(
                    activeColor,
                    SelectGenre("HOMME", FontAwesomeIcons.mars),
                  ),
                ),
                Expanded(
                  child: MaCarte(
                    activeColor,
                    SelectGenre("FEMME", FontAwesomeIcons.venus),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MaCarte(activeColor, Container()),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MaCarte(activeColor, Column()),
                ),
                Expanded(
                  child: MaCarte(activeColor, Column()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
