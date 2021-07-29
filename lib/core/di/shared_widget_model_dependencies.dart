import 'package:flutter/cupertino.dart';
import 'package:mwwm/mwwm.dart';
import 'package:mwwm_example/core/controllers/message_controller.dart';
import 'package:mwwm_example/core/error_handlers/standart_error_handler.dart';

class SharedWidgetModelDependencies extends WidgetModelDependencies {
  final MessageController messageController;

  SharedWidgetModelDependencies(
    BuildContext context,
    this.messageController,
  ) : super(
          errorHandler: StandardErrorHandler(messageController),
        );
}
