import 'package:flutter/material.dart';

class LeftColumn extends StatelessWidget {
  const LeftColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "JOHN CENA",
              style: TextStyle(fontSize: 44),
            ),
            const SizedBox(
              height: 33,
            ),
            Stack(
              children: [
                Container(
                  width: 170,
                  clipBehavior: Clip.antiAlias,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Image.asset("assets/jcv.jpg"),
                ),
                const Positioned(
                    right: 7,
                    bottom: 7,
                    child: Icon(
                      Icons.play_circle,
                      color: Colors.grey,
                    ))
              ],
            ),
            const SizedBox(
              height: 17,
            ),
            const Text(
              'John Cena : "Still More \nWork To Do"',
              style: TextStyle(
                  color: Colors.grey, letterSpacing: 1, wordSpacing: 1),
            ),
            const SizedBox(
              height: 17,
            ),
            SizedBox(
              width: 157,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 17,
                        height: 75,
                        decoration: BoxDecoration(
                            color: Colors.red.shade700,
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(5))),
                      ),
                      const Text(
                        "Standing",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "77%",
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 17,
                        height: 25,
                        decoration: BoxDecoration(
                            color: Colors.red.shade700,
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(5))),
                      ),
                      const Text(
                        "Clinch",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "17%",
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 17,
                        height: 33,
                        decoration: BoxDecoration(
                            color: Colors.red.shade700,
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(5))),
                      ),
                      const Text(
                        "Ground",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "25%",
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              width: 157,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [Text("AGE"), Text("33")],
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [Text("WEIGHT"), Text("33")],
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [Text("HEIGHT"), Text("33")],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ));
  }
}
