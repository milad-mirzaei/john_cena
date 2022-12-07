import 'package:flutter/material.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:ufc_responsive/UI_Components/size_info.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  // @override
  // Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: Row(
        children: [
          SizedBox(
            width: SizeInfo.screenWidth! * .05,
          ),
          Image.asset(
            "assets/wwe logo.png",
            width: SizeInfo.screenWidth! * .03,
          ),
          SizedBox(
            width: SizeInfo.screenWidth! * .05,
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: 517,
            child: const DefaultTabController(
              length: 4,
              child: TabBar(
                labelStyle:
                    TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                indicator: MD2Indicator(
                    indicatorColor: Colors.red,
                    indicatorHeight: 3,
                    indicatorSize: MD2IndicatorSize.full),
                tabs: [
                  Tab(child: Text("EVENTS")),
                  Tab(child: Text("RANKING")),
                  Tab(child: Text("ATHLETES")),
                  Tab(child: Text("NEWS")),
                ],
              ),
            ),
          )
        ],
      ),
      centerTitle: false,
      actions: [
        Row(
          children: const[
            CircleAvatar(
              radius: 17,
              backgroundImage: AssetImage(
                "assets/pp.jpg",
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "VIDEO",
              style: TextStyle(fontSize: 10),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "CONNECT",
              style: TextStyle(fontSize: 10),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "WATCH",
              style: TextStyle(fontSize: 10),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "SHOP",
              style: TextStyle(fontSize: 10),
            ),
            SizedBox(
              width: 25,
            ),
          ],
        )
      ],
    );
  }
}
