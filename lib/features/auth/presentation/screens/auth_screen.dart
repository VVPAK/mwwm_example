import 'package:flutter/src/widgets/framework.dart';
import 'package:mwwm/mwwm.dart';
import 'package:mwwm_example/features/auth/presentation/wms/auth_screen_component.dart';
import 'package:mwwm_example/features/auth/presentation/wms/auth_screen_wm.dart';

class AuthScreen extends CoreMwwmWidget<AuthScreenWidgetModel> {
  AuthScreen({Key? key})
      : super(
          widgetModelBuilder: (ctx) {
            return createAuthScreenWidgetModel();
          },
        );
  @override
  WidgetState<CoreMwwmWidget<AuthScreenWidgetModel>, AuthScreenWidgetModel>
      createWidgetState() {
    // TODO: implement createWidgetState
    throw UnimplementedError();
  }
}

class _AuthScreenState extends WidgetState<AuthScreen, AuthScreenWidgetModel> {
  @override
  Widget build(BuildContext context) {}
}
