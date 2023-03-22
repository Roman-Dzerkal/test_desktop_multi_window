import 'package:desktop_multi_window/desktop_multi_window.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:test/timer/timer_vm.dart';

class TimerPage extends StatelessWidget {
  final int id;

  const TimerPage({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TimerPageModel>.reactive(
      viewModelBuilder: () => TimerPageModel(),
      onViewModelReady: (viewModel) => viewModel.initializeWindow(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () async {
                  await WindowController.fromWindowId(id).hide();
                },
                icon: const Icon(Icons.close))
          ],
        ),
        body: const Center(
          child: Text('About'),
        ),
      ),
    );
  }
}
