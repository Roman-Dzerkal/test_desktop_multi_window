import 'package:stacked/stacked.dart';
import 'package:window_manager/window_manager.dart';

class TimerPageModel extends BaseViewModel {
  void initializeWindow() async {
    await windowManager.ensureInitialized();
    await windowManager.waitUntilReadyToShow(null, () async {
      // await windowManager.setMovable(true);
      await windowManager.show();
      await windowManager.focus();
    },);
  }
}