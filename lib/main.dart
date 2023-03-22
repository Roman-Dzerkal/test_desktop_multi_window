import 'dart:convert';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:test/about/about_view.dart';
import 'package:test/settings/settings_view.dart';
import 'package:test/timer/timer_view.dart';

import 'login/login_view.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main(List<String> arguments) async {
  WidgetsFlutterBinding.ensureInitialized();
  if (arguments.isNotEmpty) {
    int windowId = int.parse(arguments[1]);
    Map<String, dynamic> map = jsonDecode(arguments[2]) as Map<String, dynamic>;
    switch (map['target_window_name']) {
      case 'timer':
        runApp(MaterialApp(
          navigatorKey: navigatorKey,
          home: TimerPage(
            id: windowId,
          ),
        ));
        break;
      case 'about':
        runApp(MaterialApp(
          navigatorKey: navigatorKey,
          home: AboutPage(id: windowId),
        ));
        break;
      case 'settings':
        runApp(MaterialApp(
          navigatorKey: navigatorKey,
          home: SettingsPage(id: windowId),
        ));
        break;
      default:
        throw 'Invalid window \$NAME\$';
    }
  } else {
    runApp(MaterialApp(
      navigatorKey: navigatorKey,
      home: const LoginPage(),
    ));
  }
}
