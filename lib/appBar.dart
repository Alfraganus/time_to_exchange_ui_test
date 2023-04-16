import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'settings/colors.dart                              ';
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isActive;
  final Widget widget;

  MyAppBar({required this.title, required this.isActive, required this.widget});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      actions: isActive ? [
        widget

      ] : null,
      leading: Image(image: AssetImage('media/Vector.png'),),
      title: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: HexColor(textColor),
          ),
        ),
      ),
      elevation: 0.0,
    );
  }
}
