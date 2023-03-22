import 'dart:convert';

import 'package:desktop_multi_window/desktop_multi_window.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'dashboard_vm.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardPageModel>.reactive(
      viewModelBuilder: () => DashboardPageModel(),
      onViewModelReady: (viewModel) => viewModel.initializeWindow(),
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Column(
            children: [
              TextButton(
                child: const Text('Open timer'),
                onPressed: () {
                  DesktopMultiWindow.createWindow(
                      jsonEncode({'target_window_name': 'timer'}));
                },
              ),
              TextButton(
                child: const Text('Open About'),
                onPressed: () {
                  DesktopMultiWindow.createWindow(
                      jsonEncode({'target_window_name': 'about'}));
                },
              ),
              TextButton(
                child: const Text('Open settings'),
                onPressed: () {
                  DesktopMultiWindow.createWindow(
                      jsonEncode({'target_window_name': 'settings'}));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
