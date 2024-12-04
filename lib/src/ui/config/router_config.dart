import 'package:go_router/go_router.dart';
import 'package:redica/src/application/controllers/settings_controller.dart';
import 'package:redica/src/ui/config/app_routes.dart';

GoRouter routerConfig(SettingsController settingsController) {
  return AppRoutes.router;
}
