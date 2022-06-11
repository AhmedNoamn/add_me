import 'package:flutter/material.dart';

import 'controller/storage/app_storage.dart';
import 'screens/home/view/view.dart';
import 'themes/styles.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryClr,
        primarySwatch: kPrimaryClr,
      ),
      home: HomeView(),
    );
  }
}
