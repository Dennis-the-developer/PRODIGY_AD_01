import 'package:flutter/material.dart';
import 'package:solveit/assets/keypad_info.dart';
import 'package:solveit/common/styles/colors.dart';

class Keypad extends StatelessWidget {
  const Keypad({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        color: SelectColor().lightBackground,
      ),
      width: w,
      height: h * 0.62,
      child: Column(
        children: [
          // KEYPAD LAYER ONE
          SizedBox(
            height: h * 0.4,
            child: GridView.count(
              crossAxisCount: 4,
              childAspectRatio: 1.1,
              padding: const EdgeInsets.only(top: 2),
              children: List.generate(16, (index) {
                return Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: w * 0.015, vertical: w * 0.010),
                  decoration: BoxDecoration(
                    color: keypadLayerOne[index]["color"] as Color,
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1,
                        spreadRadius: 1,
                      )
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                  ),
                  child: Center(
                    child: Text(keypadLayerOne[index]["label"].toString(),
                        style: TextStyle(
                          fontSize: 25,
                          color: keypadLayerOne[index].containsKey("fontColor")
                              ? keypadLayerOne[index]["fontColor"] as Color
                              : Colors.black,
                        )),
                  ),
                );
              }),
            ),
          ),
          // KEYPAD LAYER TWO
          SizedBox(
              height: h * 0.22,
              child: Row(
                children: [
                  SizedBox(
                    height: h * 0.25,
                    width: w * 0.72,
                    child: GridView.count(
                      padding: const EdgeInsets.only(top: 2),
                      crossAxisCount: 3,
                      childAspectRatio: 1.06,
                      children: List.generate(6, (index) {
                        return Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: w * 0.015, vertical: w * 0.015),
                          decoration: BoxDecoration(
                            color: keypadLayerTwo[index]["color"] as Color,
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 1,
                                spreadRadius: 1,
                              )
                            ],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(40)),
                          ),
                          child: Center(
                              child: Text(
                            keypadLayerTwo[index]["label"].toString(),
                            style: const TextStyle(
                              fontSize: 25
                            ),
                          )),
                        );
                      }),
                    ),
                  ),
                  const Spacer(),
                  // EQUALS KEY
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    height: h * 0.195,
                    width: w * 0.20,
                    decoration: BoxDecoration(
                        boxShadow: const <BoxShadow>[
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                            spreadRadius: 1,
                          )
                        ],
                        color: equalKey["color"] as Color,
                        borderRadius: BorderRadius.circular(30),),
                        child: Center(
                          child: Text(
                            equalKey["label"].toString(),
                            style: TextStyle(
                              fontSize: 50,
                              color: equalKey["fontColor"] as Color,
                            )
                          ),
                        ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
