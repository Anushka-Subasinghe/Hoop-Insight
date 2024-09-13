import 'package:flutter/material.dart';


class BestPerformersPage extends StatefulWidget {
  const BestPerformersPage({super.key});

  @override
  BestPerformersPageState createState() => BestPerformersPageState();
}

class BestPerformersPageState extends State<BestPerformersPage> {
  @override
  Widget build(BuildContext context) {
    final Map<dynamic, dynamic> arguments = ModalRoute.of(context)!.settings.arguments as Map<dynamic, dynamic>;
    var players = arguments.values.first.toList();
    final List performers = players;
    final position = players[players.length - 1];
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color : Color.fromRGBO(255, 137, 0, 1),
          image: DecorationImage(
            image: AssetImage("assets/Kobe_dunkremovebgpreview1.png"),
            fit: BoxFit.fill,
            repeat: ImageRepeat.repeat,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 120.0,
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.7),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Best Players",
                    style: TextStyle(
                        fontFamily: 'Red Block DEMO',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                        color: Color(0xffFFFFFF),
                        decoration: TextDecoration.none
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Text(
                      "The top 5 best performing ${position} of the season",
                      style: const TextStyle(
                          fontFamily: 'PT Sans Narrow',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 15.0,
                          color: Color(0xffFFFFFF),
                          decoration: TextDecoration.none
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return index == 0 ? Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Container(
                        height: 200,
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius : const BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                          color : const Color.fromRGBO(48, 48, 48, 0.8999999761581421),
                          border : Border.all(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            width: 1,
                          ),
                        ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                              width: 60,
                              height: 40,
                              decoration: const BoxDecoration(
                                borderRadius : BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                                color : Color.fromRGBO(249, 208, 0, 1),
                              ),
                            child: const Text('1', textAlign: TextAlign.center, style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'IM FELL DW Pica SC',
                                fontSize: 29,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1,
                            ),),
                          ),
                          Container(
                              width: 150,
                              height: 150,
                              margin: const EdgeInsets.only(top: 20),
                              decoration: const BoxDecoration(
                                image : DecorationImage(
                                    image: AssetImage('assets/Goldcupremovebgpreview1.png'),
                                    fit: BoxFit.fitWidth
                                ),
                              )
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 50,),
                                Text('${performers[index]['player']}', textAlign: TextAlign.center, style: const TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'IM FELL DW Pica SC',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    height: 1
                                ),),
                                const SizedBox(height: 20,),
                                Text(
                                  'AGE: ${performers[index]['age']}',
                                  textAlign: TextAlign.center, style: const TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'IM FELL DW Pica SC',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    height: 1
                                ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ): Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Container(
                      width: 560,
                      height: 140,
                      padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                      decoration: BoxDecoration(
                        borderRadius : const BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                        color : const Color.fromRGBO(255, 255, 255, 1),
                        border : Border.all(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 60,
                            height: 40,
                            decoration: const BoxDecoration(
                              borderRadius : BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              color : Color.fromRGBO(249, 208, 0, 1),
                            ),
                            child: Text((index + 1).toString(), textAlign: TextAlign.center, style: const TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'IM FELL DW Pica SC',
                              fontSize: 29,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1,
                            ),),
                          ),
                          const SizedBox(width: 60,),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 35),
                                Text('${performers[index]['player']}', textAlign: TextAlign.center, style: const TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'IM FELL DW Pica SC',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    height: 1
                                ),),
                                const SizedBox(height: 20,),
                                Text(
                                  'AGE: ${performers[index]['age']}',
                                  textAlign: TextAlign.center, style: const TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'IM FELL DW Pica SC',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    height: 1
                                ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}