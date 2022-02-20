import 'package:bloc/bloc.dart';
import 'package:breakingbloc/data/models/characters.dart';
import 'package:breakingbloc/data/repo/characters_repo.dart';
import 'package:meta/meta.dart';

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
}
