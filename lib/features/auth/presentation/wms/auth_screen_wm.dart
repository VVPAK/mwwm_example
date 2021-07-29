import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:mwwm/mwwm.dart';
import 'package:mwwm_example/features/auth/domain/usecases/authenticate_user.dart';

class AuthScreenWidgetModel extends WidgetModel {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final _isLoadingController = StreamController<bool>();

  late AuthenticateUser authenticateUser;

  Stream<bool> get isLoading => _isLoadingController.stream;

  AuthScreenWidgetModel(
    WidgetModelDependencies baseDependencies, {
    required this.authenticateUser,
  }) : super(baseDependencies);

  @override
  void onLoad() {
    super.onLoad();
    _isLoadingController.add(false);
  }

  @override
  void dispose() {
    _isLoadingController.close();
    super.dispose();
  }

  Future<void> authenticate() async {
    _isLoadingController.add(true);
    //Здесь должна быть проверка полей ввода
    await authenticateUser.call(Params(
      login: loginController.text,
      password: passwordController.text,
    ));
    _isLoadingController.add(false);
  }
}
