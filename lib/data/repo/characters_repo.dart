import '../models/characters.dart';
import '../models/quotes.dart';
import '../web_services/characters_web_services.dart';

class CharactersRepo {
  final CharactersWebServices charactersWebServices;

  CharactersRepo(this.charactersWebServices);
  Future<List<Characters>> getAllCharacters() async {
    final charcacters = await charactersWebServices.getAllCharacters();
    return charcacters
        .map((character) => Characters.fromJson(character))
        .toList();
  }

  Future<List<Quotes>> getQuote(String charName) async {
    final quotes = await charactersWebServices.getQuote(charName);
    return quotes.map((charQuotes) => Quotes.fromJson(charQuotes)).toList();
  }
}
