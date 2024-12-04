import 'package:go_router/go_router.dart';
import 'package:redica/src/application/controllers/settings_controller.dart';
import 'package:redica/src/ui/views/home_view.dart';
import 'package:redica/src/ui/views/login_view.dart';
import 'package:redica/src/ui/views/settings_view.dart';

class AppRoutes {
  static const String account = '/account';
  static const String familyList = '/family-list';
  static const String familyTree = '/family-tree';
  static const String home = '/home';
  static const String settings = '/settings';
  static const String login = '/';

  static final List<String> bottomNavRoutes = [
    familyTree,
    familyList,
    home,
    settings,
    account,
  ];

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: login,
        builder: (context, state) => LoginView(),
      ),
      GoRoute(
        path: home,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: settings,
        builder: (context, state) => SettingsView(
          controller: state.extra as SettingsController,
        ),
      ),
    ],
  );
}
