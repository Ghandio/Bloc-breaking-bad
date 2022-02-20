import 'package:breakingbloc/business_logic/cubit/characters_cubit.dart';
import 'package:breakingbloc/data/web_services/characters_web_services.dart';
import 'package:breakingbloc/presentation/screens/character_details.dart';
import 'package:breakingbloc/presentation/screens/character_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'constants/strings.dart';
import 'data/repo/characters_repo.dart';

class AppRouter {
  late CharactersRepo charactersRepo;
  late CharactersCubit charactersCubit;
  AppRouter() {
    charactersRepo = CharactersRepo(CharactersWebServices());
    charactersCubit = CharactersCubit(charactersRepo);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case kCharactersScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => CharactersCubit(charactersRepo),
            child: CharactersScreen(),
          ),
        );
      case kCharactersDetailsScreen:
        return MaterialPageRoute(builder: (_) => CharacterDetailsScreen());
    }
  }
}
