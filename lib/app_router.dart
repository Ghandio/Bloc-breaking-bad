import 'package:breakingbloc/presentation/screens/character_details.dart';
import 'package:breakingbloc/presentation/screens/character_screen.dart';
import 'package:flutter/material.dart';

import 'constants/strings.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case kCharactersScreen:
        return MaterialPageRoute(builder: (_) => CharactersScreen());
      case kCharactersDetailsScreen:
        return MaterialPageRoute(builder: (_) => CharacterDetailsScreen());
    }
  }
}
