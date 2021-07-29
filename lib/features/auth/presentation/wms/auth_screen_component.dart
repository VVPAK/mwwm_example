import 'package:mwwm/mwwm.dart';
import 'package:mwwm_example/features/auth/domain/usecases/authenticate_user.dart';
import 'package:mwwm_example/features/auth/presentation/wms/auth_screen_wm.dart';
import 'package:surf_injector/surf_injector.dart';

AuthScreenWidgetModel createAuthScreenWidgetModel() {
  return AuthScreenWidgetModel();
}

class AuthScreenComponent implements Component {
  late final WidgetModelDependencies wmDependencies;
  late final AuthenticateUser authenticateUser;
}
