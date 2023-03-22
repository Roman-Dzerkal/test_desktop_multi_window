import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:test/dashboad/dashboard_view.dart';
import 'package:test/login/login_vm.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginPageModel>.reactive(
      viewModelBuilder: () => LoginPageModel(),
      onViewModelReady: (viewModel) => viewModel.initializeWindow(),
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: TextButton(
            child: const Text('Go to dashboard'),
            onPressed: () {
              Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) {
                  return const DashboardPage();
                },
              ));
            },
          ),
        ),
      ),
    );
  }
}
