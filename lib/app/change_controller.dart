import 'package:flutter/cupertino.dart';

class ChangeController {
  ChangeController._internal();
  static final ChangeController _changeController= ChangeController._internal();
  factory ChangeController() => _changeController; 

  int material = 2; 
  ValueNotifier<bool> material3 = ValueNotifier(false);
}