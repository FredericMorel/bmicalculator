
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 120,
                        ),
                        Text(
                          "HOMME",
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MaCarte(
                    activeColor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 120,
                        ),
                        Text(
                          "FEMME",
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )
                      ],
                    ),
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
