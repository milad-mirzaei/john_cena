import 'package:flutter/material.dart';
import 'package:ufc_responsive/UI_Components/Mobile/mobile_body.dart';
import 'package:ufc_responsive/UI_Components/Mobile/mobile_end_drawer.dart';
import 'package:ufc_responsive/UI_Components/Web/web_body.dart';
import 'package:ufc_responsive/UI_Components/size_info.dart';

import 'UI_Components/Mobile/mobile_app_bar.dart';
import 'UI_Components/Web/web_app_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Home(),
    theme: ThemeData(fontFamily: 'Anton'),
  ));
}

class Home extends StatefulWidget {
 const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();

  bool isWeb() {
    return SizeInfo.screenWidth! > 950;
  }

  @override
  Widget build(BuildContext context) {
    SizeInfo.init(context);

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      endDrawer: isWeb() ? null : MobileEndDrawer(scaffoldKey: scaffoldKey,),
      appBar: isWeb()
          ?const PreferredSize(
              preferredSize:  Size.fromHeight(60), child: WebAppBar())
          : PreferredSize(
              preferredSize:const Size.fromHeight(60),
              child: MobileAppBar(
                scaffoldKey: scaffoldKey,
              )),
      body: isWeb() ?const WebBody() :const MobileBody(),
    );
  }
}
