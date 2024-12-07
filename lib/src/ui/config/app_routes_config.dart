import 'package:go_router/go_router.dart';
import 'package:redica/src/application/controllers/settings_controller.dart';
import 'package:redica/src/ui/enums/app_routes_enum.dart';
import 'package:redica/src/ui/views/account_view.dart';
import 'package:redica/src/ui/views/family_list_view.dart';
import 'package:redica/src/ui/views/family_tree_view.dart';
import 'package:redica/src/ui/views/home_view.dart';
import 'package:redica/src/ui/views/login_view.dart';
import 'package:redica/src/ui/views/settings_view.dart';

class AppRoutesConfig {
  final SettingsController settingsController;

  AppRoutesConfig({required this.settingsController});

  GoRouter get router => GoRouter(
        routes: <RouteBase>[
          GoRoute(
            path: AppRoutesEnum.login.route,
            builder: (context, state) => LoginView(),
          ),
          GoRoute(
            path: AppRoutesEnum.home.route,
            builder: (context, state) => const HomeView(),
          ),
          GoRoute(
            path: AppRoutesEnum.settings.route,
            builder: (context, state) => SettingsView(
              controller: settingsController,
            ),
          ),
          GoRoute(
              path: AppRoutesEnum.familyTree.route,
              builder: (constext, state) => const FamilyTreeView()),
          GoRoute(
              path: AppRoutesEnum.familyList.route,
              builder: (constext, state) => const FamilyListView()),
          GoRoute(
              path: AppRoutesEnum.account.route,
              builder: (constext, state) => const AccountView()),
        ],
      );
}
