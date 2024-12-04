import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:redica/src/ui/config/app_routes.dart';

void onItemTapped(BuildContext context, int index) {
  context.go(AppRoutes.bottomNavRoutes[index]);
}
