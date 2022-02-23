part of 'characters_cubit.dart';

@immutable
abstract class CharactersState {}

class CharactersInitial extends CharactersState {}

class CharactersLoadded extends CharactersState {
  final List<Characters> characters;
  CharactersLoadded(this.characters);
}

class QuotesLoaded extends CharactersState {
  final List<Quotes> quotes;
  QuotesLoaded(this.quotes);
}
