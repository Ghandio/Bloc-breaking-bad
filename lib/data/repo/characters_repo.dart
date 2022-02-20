import 'package:breakingbloc/data/models/characters.dart';
import 'package:breakingbloc/data/web_services/characters_web_services.dart';

class CharactersRepo {
  final CharactersWebServices charactersWebServices;

  CharactersRepo(this.charactersWebServices);
  Future<List<Characters>> getAllCharacters() async {
    final charcacters = await charactersWebServices.getAllCharacters();
    return charcacters
        .map((character) => Characters.fromJson(character))
        .toList();
  }
}
