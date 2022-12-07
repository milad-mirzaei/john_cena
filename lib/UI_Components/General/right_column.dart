import 'package:flutter/material.dart';

class RightColumn extends StatelessWidget {
  const RightColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  
       Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "63",
                  style: TextStyle(fontSize: 50, color: Colors.red.shade800),
                ),
                Text(
                  "%",
                  style: TextStyle(fontSize: 20, color: Colors.red.shade800),
                ),
              ],
            ),
           const SizedBox(
              height: 7,
            ),
          const  Text("GRAPPLING \nACCURACY"),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text("6"),
                    Text(
                      "Takedowns \nAttempted",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    )
                  ],
                ),
            const    SizedBox(
                  width: 7,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:const [
                    Text("4"),
                    Text(
                      "Takedowns \nLanded",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    )
                  ],
                ),
              ],
            ),
          const  SizedBox(
              height: 17,
            ),
            Row(
              children: [
                Text(
                  "49",
                  style: TextStyle(fontSize: 50, color: Colors.red.shade800),
                ),
                Text(
                  "%",
                  style: TextStyle(fontSize: 20, color: Colors.red.shade800),
                ),
              ],
            ),
           const Text("STRIKING \nACCURACY"),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:const [
                    Text("1100"),
                    Text(
                      "Sig. Strikes \nAttempted",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    )
                  ],
                ),
              const  SizedBox(
                  width: 7,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:const [
                    Text("543"),
                    Text(
                      "Sig. Strikes \nLanded",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    )
                  ],
                ),
              ],
            ),
         const   SizedBox(
              height: 25,
            ),
          const  Text(
              "Next Match",
              style: TextStyle(color: Colors.grey),
            ),
         const   SizedBox(
              height: 25,
            ),
            Container(
                width: 170,
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  "assets/next match.jpg",
                  fit: BoxFit.cover,
                )),
           const SizedBox(
              height: 25,
            )
          ],
    );
  }
}
