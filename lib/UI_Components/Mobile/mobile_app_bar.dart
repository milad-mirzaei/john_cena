import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  // @override
  // Size get preferredSize => const Size.fromHeight(60);

  final GlobalKey<ScaffoldState> scaffoldKey;

  const MobileAppBar({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: Image.asset(
        "assets/wwe logo.png",
        width: 40,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(7.0),
          child: InkWell(
              onTap: () {
                scaffoldKey.currentState!.openEndDrawer();
              },
              child: const Icon(
                Icons.menu,
                color: Colors.white,
                size: 20,
              )),
        ),
      ],
    );
  }
}
