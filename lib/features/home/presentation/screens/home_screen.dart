import 'package:flutter/material.dart';
import 'package:mwwm/mwwm.dart';
import 'package:mwwm_example/features/home/presentation/wms/home_screen_wm.dart';

class HomeScreen extends CoreMwwmWidget<HomeScreenWidgetModel> {
  const HomeScreen({Key? key})
      : super(
          key: key,
          widgetModelBuilder: homeScreenWidgetModelBuilder,
        );

  @override
  WidgetState<CoreMwwmWidget<HomeScreenWidgetModel>, HomeScreenWidgetModel>
      createWidgetState() => _HomeScreenState();
}

class _HomeScreenState extends WidgetState<HomeScreen, HomeScreenWidgetModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: Container(),
    );
  }
}
