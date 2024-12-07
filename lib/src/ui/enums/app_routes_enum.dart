import 'package:flutter/material.dart';
import 'package:redica/src/ui/views/account_view.dart';
import 'package:redica/src/ui/views/family_list_view.dart';
import 'package:redica/src/ui/views/family_tree_view.dart';
import 'package:redica/src/ui/views/home_view.dart';
import 'package:redica/src/ui/views/login_view.dart';
import 'package:redica/src/ui/views/settings_view.dart';

enum AppRoutesEnum {
  familyTree,
  familyList,
  home,
  settings,
  account,
  login,
}

extension AppRoutesEnumExtension on AppRoutesEnum {
  String get route {
    switch (this) {
      case AppRoutesEnum.login:
        return '/';
      case AppRoutesEnum.familyTree:
        return '/family-tree';
      case AppRoutesEnum.familyList:
        return '/family-list';
      case AppRoutesEnum.home:
        return '/home';
      case AppRoutesEnum.settings:
        return '/settings';
      case AppRoutesEnum.account:
        return '/account';
    }
  }
}

extension AppNavigationRoutesIconsExtension on AppRoutesEnum {
  Object get icon {
    switch (this) {
      case AppRoutesEnum.login:
        return Icons.login;
      case AppRoutesEnum.familyTree:
        return Icons.account_tree;
      case AppRoutesEnum.familyList:
        return Icons.list;
      case AppRoutesEnum.home:
        return Icons.home;
      case AppRoutesEnum.settings:
        return Icons.settings;
      case AppRoutesEnum.account:
        return Icons.person;
    }
  }
}

extension AppNavigationRoutesTitlesExtension on AppRoutesEnum {
  String get title {
    switch (this) {
      case AppRoutesEnum.login:
        return 'Login';
      case AppRoutesEnum.familyTree:
        return 'Family Tree';
      case AppRoutesEnum.familyList:
        return 'Family List';
      case AppRoutesEnum.home:
        return 'Home';
      case AppRoutesEnum.settings:
        return 'Settings';
      case AppRoutesEnum.account:
        return 'Account';
    }
  }
}

extension AppNavigationRoutesBuildersExtension on AppRoutesEnum {
  Widget get builder {
    switch (this) {
      case AppRoutesEnum.login:
        return LoginView();
      case AppRoutesEnum.familyTree:
        return const FamilyTreeView();
      case AppRoutesEnum.familyList:
        return const FamilyListView();
      case AppRoutesEnum.home:
        return const HomeView();
      case AppRoutesEnum.settings:
        return SettingsView();
      case AppRoutesEnum.account:
        return const AccountView();
    }
  }
}
