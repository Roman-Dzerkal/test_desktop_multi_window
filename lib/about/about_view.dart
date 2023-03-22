import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:test/about/about_vm.dart';

class AboutPage extends StatelessWidget {
  final int id;
  const AboutPage({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AboutPageModel>.reactive(
      viewModelBuilder: () => AboutPageModel(),
      onViewModelReady: (viewModel) => viewModel.initializeWindow(),
      builder: (context, model, child) => Scaffold(),
    );
  }
}