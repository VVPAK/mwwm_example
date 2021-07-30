import 'package:flutter/cupertino.dart';
import 'package:mwwm/mwwm.dart';
import 'package:mwwm_example/core/error_handlers/standart_error_handler.dart';
import 'package:provider/provider.dart';

HomeScreenWidgetModel homeScreenWidgetModelBuilder(BuildContext context) {
  return HomeScreenWidgetModel(
    WidgetModelDependencies(
      errorHandler: Provider.of<StandardErrorHandler>(context, listen: false),
    ),
  );
}

class HomeScreenWidgetModel extends WidgetModel {
  HomeScreenWidgetModel(WidgetModelDependencies baseDependencies)
      : super(baseDependencies);
}
