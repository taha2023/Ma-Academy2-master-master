import 'package:flutter/material.dart';
import 'package:ma_academy/ma_academy/app/my_app.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  runApp(MaAcademy());
}
