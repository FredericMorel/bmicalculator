import 'package:flutter/material.dart';
import 'inputPage.dart';
void main() {
  runApp(const IMCApp());
}



class IMCApp extends StatelessWidget {
  const IMCApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputPages(),
      theme: ThemeData(
        // Définit la luminosité et la couleur par défaut
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        //Définit la famille de polices par défaut.
        fontFamily: 'Géorgie',
        // Définit le `TextTheme` par défaut. Utilisez ceci pour spécifier // le style de texte par défaut pour les titres, les titres, les corps de texte, etc.
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 72.0,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(255, 241, 118, 1)),
          headline6: TextStyle(
              fontSize: 16.0,
              fontStyle: FontStyle.normal,
              color: Color.fromRGBO(255, 241, 118, 1)),
          bodyText2: TextStyle(
              fontSize: 14.0,
              fontFamily: 'Hind',
              color: Color.fromARGB(255, 230, 230, 230)),
        ),
      ),
    );
  }
}



