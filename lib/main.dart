import 'package:flutter/material.dart';
import 'package:flutter_material_3/app/botton_navigation_bar_page.dart';
import 'package:flutter_material_3/app/change_controller.dart';
import 'package:flutter_material_3/app/navigation_bar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: ChangeController().material3,
      builder: (context, bool material3, _) {
        return MaterialApp(
          title: 'Flutter 3',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: material3,
            primaryColor: Colors.blue,
          ),
          home: material3 ? const NavigationBarPage() : const BottonNavigationBarPage(),
        );
      }
    );
  }
}