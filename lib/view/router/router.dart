import 'package:go_router/go_router.dart';

import '../screen/home_screen.dart';
import '../screen/welcome_screen.dart';

abstract class RouteNames {
  static const String root = 'root';
  static const String splash = 'splash';
  static const String home = 'home';
}

final router = GoRouter(routes: [
  GoRoute(
    name: RouteNames.root,
    path: '/',
    builder: (context, state) {
      return const WelcomeScreen();
    },
    routes: [
      GoRoute(
        name: RouteNames.home,
        path: 'home',
        builder: (context, state) {
          return const HomeScreen();
        },
      ),
    ],
  ),
]);
