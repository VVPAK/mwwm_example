import 'package:mwwm/mwwm.dart';
import 'package:mwwm_example/features/auth/domain/usecases/authenticate_user.dart';
import 'package:surf_injector/surf_injector.dart';

class AuthScreenComponent implements Component {
  late final WidgetModelDependencies wmDependencies;
  late final AuthenticateUser authenticateUser;
}
