import 'package:flutter/material.dart';
import 'package:ufc_responsive/UI_Components/size_info.dart';

class JohnCenaText extends StatelessWidget {
  const JohnCenaText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeInfo.screenWidth,
      height: SizeInfo.screenHeight,
      padding: const EdgeInsets.symmetric(horizontal: 57),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Text(
          "NEVER \nGIVE UP",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.red.shade700, letterSpacing: 2),
        ),
      ),
    );
  }
}
