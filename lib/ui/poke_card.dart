import 'package:flutter/material.dart';
import 'package:pokedex_app/model/pokemon.dart';

class PokeCard extends StatefulWidget {
  @override
  _PokeCardState createState() => _PokeCardState();
}

class _PokeCardState extends State<PokeCard> {
  Pokemon bulbasaur = new Pokemon(
      'Bulbasaur',
      'A wild pokemon',
      'https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png',
      'Grass',
      Colors.green.shade200);

  Pokemon ivysaur = new Pokemon(
      'Ivysaur',
      '',
      'https://assets.pokemon.com/assets/cms2/img/pokedex/full/002.png',
      '',
      Colors.green.shade300);
  Pokemon venusaur = new Pokemon(
      'Venusaur',
      '',
      'https://assets.pokemon.com/assets/cms2/img/pokedex/full/003.png',
      '',
      Colors.green.shade400);

  Pokemon charmander = new Pokemon(
      'Charmander',
      '',
      'https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png',
      '',
      Colors.orange.shade200);

  Pokemon charmeleon = new Pokemon(
      'Charmeleon',
      '',
      'https://assets.pokemon.com/assets/cms2/img/pokedex/full/005.png',
      '',
      Colors.orange.shade700);

  Pokemon charizard = new Pokemon(
      'Charizard',
      '',
      'https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png',
      '',
      Colors.orange);

  Pokemon squirtle = new Pokemon(
      'Squirtle',
      '',
      'https://assets.pokemon.com/assets/cms2/img/pokedex/full/007.png',
      '',
      Colors.blue.shade200);
  Pokemon wartortle = new Pokemon(
      'Wartortle',
      '',
      'https://assets.pokemon.com/assets/cms2/img/pokedex/full/008.png',
      '',
      Colors.blue.shade400);
  Pokemon blastoise = new Pokemon(
      'Blastoise',
      '',
      'https://assets.pokemon.com/assets/cms2/img/pokedex/full/009.png',
      '',
      Colors.blue.shade500);

  double _widthImg = 150;
  double _heightImg = 150;
  Color _mainColor = Colors.grey.shade300;
  Color _secondColor = Colors.white;
  Color _textColor = Colors.white;
  double _textPokeSize = 18;

  Widget showPokemon(Pokemon poke) {
    return Container(
      height: 180,
      width: 180,
      padding: EdgeInsets.all(0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: poke.color,
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
              style: TextStyle(fontSize: _textPokeSize, color: _textColor),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var row = Row(
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
    );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade400,
          centerTitle: true,
          elevation: 1,
          title: Row(
            children: [
              Image.network(
                "https://icon-library.com/images/pokedex-icon/pokedex-icon-21.jpg",
                width: 40,
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
              ),
              Text(
                "Flutter Pokedex",
                style: TextStyle(fontSize: 30, color: _secondColor),
              ),
            ],
          ),
        ),
        backgroundColor: _mainColor,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.count(
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            crossAxisCount: 2,
            children: [
              showPokemon(bulbasaur),
              showPokemon(ivysaur),
              showPokemon(venusaur),
              showPokemon(charmander),
              showPokemon(charmeleon),
              showPokemon(charizard),
              showPokemon(squirtle),
              showPokemon(wartortle),
              showPokemon(blastoise),
            ],
          ),
        ));
  }
}
