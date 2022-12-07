import 'package:flutter/material.dart';
import 'package:ufc_responsive/UI_Components/General/left_column.dart';
import 'package:ufc_responsive/UI_Components/General/right_column.dart';
import 'package:ufc_responsive/UI_Components/Web/john_cena_text.dart';

class WebBody extends StatelessWidget {
  const WebBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const JohnCenaText(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const LeftColumn(),
              Padding(
                padding: const EdgeInsets.only(right: 125),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 68.0),
                      child: Image.asset(
                        "assets/jc.png",
                        scale: .70,
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 57,
                      child: Text(
                        "#1",
                        style: TextStyle(
                            fontSize: 133,
                            color: Colors.black.withOpacity(.88)),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 17),
                child: RightColumn(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
