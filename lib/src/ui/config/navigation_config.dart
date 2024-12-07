import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:redica/src/ui/enums/app_routes_enum.dart';

void onItemTapped(BuildContext context, int index) {
  context.go(AppRoutesEnum.values[index].name);
}
