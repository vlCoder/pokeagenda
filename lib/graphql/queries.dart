class Queries{
  static final String pokemos = """
  query pokemons(\$first: Int!) {
    pokemons(first: \$first){
      id
      number
      name
      image
    }
  }
  """;
}