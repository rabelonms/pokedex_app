import 'package:flutter/material.dart';
import 'package:pokedex_app/model/pokemon.dart';

class PokeCard extends StatefulWidget {
  @override
  _PokeCardState createState() => _PokeCardState();
}

class _PokeCardState extends State<PokeCard> {
  Pokemon pikachu = new Pokemon(
      'Pikachu',
      'Eletric',
      'https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png',
      'An eletric wild pokemon');

  double _widthImg = 150;
  double _heightImg = 150;
  Color _mainColor = Colors.green.shade300;
  Color _secondColor = Colors.white;
  double _textPokeSize = 15;

  Widget showPokemon(Pokemon poke) {
    return Container(
      height: 230,
      width: 230,
      padding: EdgeInsets.all(0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.yellow,
        elevation: 20,
        child: Column(
          children: [
            Image.network(
              poke.img,
              width: _widthImg,
              height: _heightImg,
            ),
            Text(
              poke.name,
              style: TextStyle(fontSize: _textPokeSize),
            ),
            Text(
              poke.type,
              style: TextStyle(fontSize: _textPokeSize),
            ),
            Text(
              poke.desc,
              style: TextStyle(fontSize: _textPokeSize),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _mainColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Flutter Pokedex",
          style: TextStyle(fontSize: 30, color: _secondColor),
        ),
      ),
      backgroundColor: _mainColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30),
          ),
          Center(child: showPokemon(pikachu)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue.shade300)),
                onPressed: () {},
                child: Text(
                  "Anterior",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 80, left: 30)),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue.shade300)),
                onPressed: () {},
                child: Text("Proximo", style: TextStyle(color: Colors.white)),
              )
            ],
          )
        ],
      ),
    );
  }
}
