import 'package:flutter/material.dart';
import 'package:portifolio/Models/user.dart';

class UserWidget extends InheritedWidget {
  User usuario;

  UserWidget({required this.usuario, super.key, required super.child});

  @override
  bool updateShouldNotify(UserWidget oldWidget) {
    return oldWidget.usuario != this.usuario;
  }

  static UserWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<UserWidget>();
  }
}