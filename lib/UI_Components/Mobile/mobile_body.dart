import 'package:flutter/material.dart';
import 'package:ufc_responsive/UI_Components/General/left_column.dart';
import 'package:ufc_responsive/UI_Components/General/right_column.dart';
import 'package:ufc_responsive/UI_Components/size_info.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Text(
              "NEVER GIVE UP",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red.shade700, fontSize: 50),
            ),
            Stack(
              children: [
                SizedBox(
                  height: SizeInfo.screenHeight! - 230,
                  child: Image.asset("assets/jc.png"),
                ),
                Positioned(
                  right: 0,
                  top: 17,
                  child: Text(
                    "#1",
                    style: TextStyle(
                        fontSize: 107, color: Colors.black.withOpacity(.88)),
                  ),
                )
              ],
            ),
            Divider(
              thickness: 2,
              height: 1,
              endIndent: SizeInfo.screenWidth! * .05,
              color: Colors.black,
              indent: SizeInfo.screenWidth! * .05,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:const [LeftColumn(), RightColumn()],
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
