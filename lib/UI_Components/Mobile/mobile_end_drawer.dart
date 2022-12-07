// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MobileEndDrawer extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const MobileEndDrawer({
    Key? key,
    required this.scaffoldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: InkWell(
                      onTap: () {
                        scaffoldKey.currentState!.closeEndDrawer();
                      },
                      child: const Icon(Icons.close_rounded)),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Text("EVENTS"),
            const SizedBox(
              height: 40,
            ),
            const Text("RANKINGS"),
            const SizedBox(
              height: 40,
            ),
            const Text("ATHLETES"),
            const SizedBox(
              height: 40,
            ),
            const Text("NEWS"),
            const SizedBox(
              height: 40,
            ),
            const Text("PROILE"),
          ],
        ),
      ),
    );
  }
}
