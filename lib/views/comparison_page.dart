import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ComparisonPage extends StatefulWidget {
  const ComparisonPage({super.key});

  @override
  ComparisonPageState createState() => ComparisonPageState();
}

class ComparisonPageState extends State<ComparisonPage> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as Map<dynamic, dynamic>;

    // Extract player1 and player2 from the arguments
    final player1 = arguments.values.first;
    final player2 = arguments.values.elementAt(1);

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color : Color.fromRGBO(14, 14, 14, 1),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 50),
                  decoration: const BoxDecoration(
                    borderRadius : BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    color : Color.fromRGBO(255, 255, 255, 0.7799999713897705),
                  ),
                child: const Text('Player Comparison', textAlign: TextAlign.start, style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Red Block DEMO',
                    fontSize: 35,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5
                ),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.transparent,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * 0.48,
                    alignment: Alignment.topCenter,
                    child: Column(
                      children:[
                        Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            margin: const EdgeInsets.only(top: 50, right: 30),
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius : const BorderRadius.only(
                                topLeft: Radius.circular(223),
                                topRight: Radius.circular(223),
                                bottomLeft: Radius.circular(223),
                                bottomRight: Radius.circular(223),
                              ),
                              border : Border.all(
                                color: const Color.fromRGBO(202, 202, 202, 1),
                                width: 3,
                              ),
                              image : const DecorationImage(
                                  image: AssetImage('assets/Kevindurant.png'),
                                  fit: BoxFit.fill
                              ),
                            )
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.4,
                          margin: const EdgeInsets.only(top: 50, left: 10),
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            borderRadius : BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                            color : Color.fromRGBO(255, 255, 255, 0.7799999713897705),
                          ),
                          child: Column(
                            children: [
                              Text(player1['player'], textAlign: TextAlign.center, style: const TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'PT Sans Narrow',
                                  fontSize: 21,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),),
                              const SizedBox(height: 20,),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                alignment: Alignment.centerLeft,
                                child: Text('age: ${player1['age']}', textAlign: TextAlign.center, style: const TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'PT Sans Narrow',
                                    fontSize: 20,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),),
                              ),
                              const SizedBox(height: 20,),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                alignment: Alignment.centerLeft,
                                child: const Text('height:', textAlign: TextAlign.center, style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'PT Sans Narrow',
                                    fontSize: 20,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),),
                              ),
                              const SizedBox(height: 20,),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                alignment: Alignment.centerLeft,
                                child: const Text('weight:', textAlign: TextAlign.center, style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'PT Sans Narrow',
                                    fontSize: 20,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),),
                              ),
                              const SizedBox(height: 20,),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                alignment: Alignment.centerLeft,
                                child: Text('games: ${player1['g']}', textAlign: TextAlign.center, style: const TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'PT Sans Narrow',
                                    fontSize: 20,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),),
                              ),
                              const SizedBox(height: 20,),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                alignment: Alignment.centerLeft,
                                child: Text('2PT: ${player1['x2p']}', textAlign: TextAlign.center, style: const TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'PT Sans Narrow',
                                    fontSize: 20,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),),
                              ),
                              const SizedBox(height: 20,),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                alignment: Alignment.centerLeft,
                                child: Text('3PT: ${player1['x3p']}', textAlign: TextAlign.center, style: const TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'PT Sans Narrow',
                                    fontSize: 20,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 2,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.white,
                  ),
                  Container(
                    color: Colors.transparent,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * 0.48,
                    alignment: Alignment.topCenter,
                    child: Column(
                      children:[
                        Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            margin: const EdgeInsets.only(top: 50, left: 30),
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius : const BorderRadius.only(
                                topLeft: Radius.circular(223),
                                topRight: Radius.circular(223),
                                bottomLeft: Radius.circular(223),
                                bottomRight: Radius.circular(223),
                              ),
                              border : Border.all(
                                color: const Color.fromRGBO(202, 202, 202, 1),
                                width: 3,
                              ),
                              image : const DecorationImage(
                                  image: AssetImage('assets/Kobe3.png'),
                                  fit: BoxFit.fill
                              ),
                            )
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.4,
                            margin: const EdgeInsets.only(top: 50, left: 10),
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              borderRadius : BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              color : Color.fromRGBO(255, 255, 255, 0.7799999713897705),
                            ),
                          child: Column(
                            children: [
                              Text(player2['player'], textAlign: TextAlign.center, style: const TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'PT Sans Narrow',
                                  fontSize: 21,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),),
                              const SizedBox(height: 20,),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                alignment: Alignment.centerLeft,
                                child: Text('age: ${player2['age']}', textAlign: TextAlign.center, style: const TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'PT Sans Narrow',
                                    fontSize: 20,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),),
                              ),
                              const SizedBox(height: 20,),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                alignment: Alignment.centerLeft,
                                child: const Text('height:', textAlign: TextAlign.center, style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'PT Sans Narrow',
                                    fontSize: 20,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),),
                              ),
                              const SizedBox(height: 20,),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                alignment: Alignment.centerLeft,
                                child: const Text('weight:', textAlign: TextAlign.center, style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'PT Sans Narrow',
                                    fontSize: 20,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),),
                              ),
                              const SizedBox(height: 20,),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                alignment: Alignment.centerLeft,
                                child: Text('games: ${player2['g']}', textAlign: TextAlign.center, style: const TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'PT Sans Narrow',
                                    fontSize: 20,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),),
                              ),
                              const SizedBox(height: 20,),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                alignment: Alignment.centerLeft,
                                child: Text('2PT: ${player2['x2p']}', textAlign: TextAlign.center, style: const TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'PT Sans Narrow',
                                    fontSize: 20,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),),
                              ),
                              const SizedBox(height: 20,),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                alignment: Alignment.centerLeft,
                                child: Text('3PT: ${player2['x3p']}', textAlign: TextAlign.center, style: const TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'PT Sans Narrow',
                                    fontSize: 20,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}