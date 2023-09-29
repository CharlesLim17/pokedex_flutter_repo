import 'package:pokedex_flutter_repo/features/pokedex/model/pokedex_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';

part 'fetch_pokedex_provider.g.dart';

@riverpod
Future<PokedexModel> fetchPokemonData(FetchPokemonDataRef ref) async {
  final dio = Dio();

  Response response = await dio.get(
      'raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json');

  return PokedexModel.fromJson(response.data);
}
