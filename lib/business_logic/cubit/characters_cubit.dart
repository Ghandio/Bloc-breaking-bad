import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/characters.dart';
import '../../data/models/quotes.dart';
import '../../data/repo/characters_repo.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepo charactersRepo;
  List<Characters> characters = [];

  CharactersCubit(this.charactersRepo) : super(CharactersInitial());
  List<Characters> getAllCharacters() {
    charactersRepo.getAllCharacters().then((characters) {
      emit(CharactersLoadded(characters));
      this.characters = characters;
    });
    return characters;
  }

  void getQuotes(String charName) {
    charactersRepo.getQuote(charName).then((quotes) {
      emit(QuotesLoaded(quotes));
    });
  }
}
