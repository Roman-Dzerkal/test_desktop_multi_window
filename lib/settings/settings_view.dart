import 'package:desktop_multi_window/desktop_multi_window.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:test/settings/settings_vm.dart';

class SettingsPage extends StatelessWidget {
  final int id;

  const SettingsPage({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SettingsPageModel>.reactive(
      viewModelBuilder: () => SettingsPageModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                tooltip: 'Close application',
                onPressed: () => WindowController.fromWindowId(id).close(),
                icon: const Icon(Icons.close))
          ],
        ),
      ),
    );
  }
}
