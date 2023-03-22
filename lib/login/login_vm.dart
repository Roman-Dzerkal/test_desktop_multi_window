import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:window_manager/window_manager.dart';

class LoginPageModel extends BaseViewModel {
  void initializeWindow() {
    windowManager.ensureInitialized();
    windowManager.waitUntilReadyToShow(null, () async {
      await windowManager.setSize(const Size(400, 400));
      await windowManager.setAlignment(Alignment.center);
      await windowManager.show();
      await windowManager.focus();
    });
  }
}
