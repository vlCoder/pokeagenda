import 'package:pokeagenda/graphql/queries.dart';
import 'package:pokeagenda/models/poke.model.dart';
import 'package:pokeagenda/network/graphql.connect.dart';

class PokeRepository{
  Future<List<PokeModel>> search(int quantity) async {
    List<PokeModel> listPoke = <PokeModel>[];
    GraphqlConnect graphql = GraphqlConnect();
    Map<String, dynamic> json = await graphql.query(Queries.pokemos, variables: {
      "first": quantity
    });

    var pokemons = json['data']['pokemons'];
    
    for(var poke in pokemons) {
      listPoke.add(PokeModel.fromJson(poke));
    }
    return listPoke;
  }
}