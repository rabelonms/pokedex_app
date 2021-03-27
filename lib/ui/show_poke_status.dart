import 'package:flutter/material.dart';
import 'package:pokedex_app/model/pokemon.dart';

class PokeStatus extends StatelessWidget {
  double _widthImg = 150;
  double _heightImg = 150;
  Color _mainColor = Colors.grey.shade300;
  Color _secondColor = Colors.white;
  Color _textColor = Colors.white;
  double _textPokeSize = 18;

  @override
  Widget build(BuildContext context) {
    //return showStatusPokemon();
  }

  showStatusPokemon(Pokemon poke) {
    return Container(
      height: 300,
      width: 300,
      padding: EdgeInsets.all(30),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
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
}
