import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_text.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Size size;

  const AppAppBar({
    Key? key,
    required this.title,
    required this.size,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(size.width * .15);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: AppText(
        text: title,
        fontsize: 32,
      ),
      elevation: 0,
    );
  }
}
