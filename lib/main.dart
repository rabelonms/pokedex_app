import 'package:flutter/material.dart';
import 'package:pokedex_app/ui/poke_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PokeCard(),
    );
  }
}
