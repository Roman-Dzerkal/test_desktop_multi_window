import 'dart:ui';

import 'package:stacked/stacked.dart';
import 'package:window_manager/window_manager.dart';

class AboutPageModel extends BaseViewModel {
  void initializeWindow() async {
    await windowManager.ensureInitialized();
    await windowManager.waitUntilReadyToShow(null, () async {
      await windowManager.setSize(const Size(300, 300));
      await windowManager.show();
      await windowManager.focus();
    });
  }
}
