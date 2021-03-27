class Pokemon {
  String name;
  String type;
  String img;
  String desc;

  Pokemon(String name, String type, String img, String desc) {
    this.name = name;
    this.type = type;
    this.img = img;
    this.desc = desc;
  }
}

Pokemon pikachu = new Pokemon(
    'Pikachu',
    'Eletric',
    'https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png',
    'A eletric wild pokemon');
