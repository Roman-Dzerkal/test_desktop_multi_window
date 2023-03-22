import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:window_manager/window_manager.dart';

class DashboardPageModel extends BaseViewModel {
  void initializeWindow() async {
    await windowManager.ensureInitialized();
    await windowManager.waitUntilReadyToShow(null, () async {
      await windowManager.setAlignment(Alignment.center);
      await windowManager.setResizable(false);
      await windowManager.show();
      await windowManager.focus();
    });
  }
}
