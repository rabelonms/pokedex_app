import 'package:flutter/cupertino.dart';

class Pokemon {
  String name;
  String type;
  String img;
  String desc;
  Color color;

  Pokemon(String name, String type, String img, String desc, Color color) {
    this.name = name;
    this.type = type;
    this.img = img;
    this.desc = desc;
    this.color = color;
  }
}
