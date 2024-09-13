import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class BestPlayersPage extends StatefulWidget {
  const BestPlayersPage({super.key});

  @override
  BestPlayersPageState createState() => BestPlayersPageState();
}

class BestPlayersPageState extends State<BestPlayersPage> {
  String getBestPlayers = 'http://10.0.2.2:5000/best';

  getPlayers(String position) async {
    try {
      final uri = Uri.parse(getBestPlayers);
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        final performers = jsonResponse[position];
        Navigator.pushNamed(context, '/bestP', arguments: { performers: { ...performers, position} });
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color : Color.fromRGBO(255, 137, 0, 1),
        image: DecorationImage(
          image: AssetImage("assets/Orange_playerremovebgpreview1.png"),
          fit: BoxFit.fill,
          repeat: ImageRepeat.repeat,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 150.0,
                  margin: const EdgeInsets.only(top: 20, bottom: 30),
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.7),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Player Roles",
                        style: TextStyle(
                            fontFamily: 'Red Block DEMO',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,

                            color: Color(0xffFFFFFF),
                            decoration: TextDecoration.none
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: const Text(
                          "Please select the player role in order to see the player rankings",
                          style: TextStyle(
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
              GestureDetector(
                onTap: () => getPlayers('centers'),
                child: Container(
                  child: Container(
                    child: const Center(
                      child: Text(
                        "Center",
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none
                        ),
                      ),
                    ),
                      width: 300,
                      height: 150,
                      margin: const EdgeInsets.only(top: 10),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage("assets/Centers1.png"),
                          fit: BoxFit.fill,
                          repeat: ImageRepeat.repeat,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      )
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => getPlayers('shootingGuards'),
                child: Container(
                  child: Container(
                      child: const Center(
                        child: Text(
                          "Shooting Guard",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.none
                          ),
                        ),
                      ),
                      width: 300,
                      height: 150,
                      margin: const EdgeInsets.only(top: 40),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage("assets/Shootingguard1.png"),
                          fit: BoxFit.fill,
                          repeat: ImageRepeat.repeat,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      )
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => getPlayers('pointGuards'),
                child: Container(
                  child: Container(
                      child: const Center(
                        child: Text(
                          "Point Guard",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.none
                          ),
                        ),
                      ),
                      width: 300,
                      height: 150,
                      margin: const EdgeInsets.only(top: 40),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage("assets/Shootingguard1.png"),
                          fit: BoxFit.fill,
                          repeat: ImageRepeat.repeat,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      )
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => getPlayers('powerForwards'),
                child: Container(
                  child: Container(
                      child: const Center(
                        child: Text(
                          "Power Forward",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.none
                          ),
                        ),
                      ),
                      width: 300,
                      height: 150,
                      margin: const EdgeInsets.only(top: 40),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage("assets/Shootingguard1.png"),
                          fit: BoxFit.fill,
                          repeat: ImageRepeat.repeat,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      )
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => getPlayers('smallForwards'),
                child: Container(
                  child: Container(
                      child: const Center(
                        child: Text(
                          "Small Forward",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.none
                          ),
                        ),
                      ),
                      width: 300,
                      height: 150,
                      margin: const EdgeInsets.only(top: 40),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage("assets/Shootingguard1.png"),
                          fit: BoxFit.fill,
                          repeat: ImageRepeat.repeat,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      )
                  ),
                ),
              ),
              const SizedBox(height: 20,)
            ]
        ),
      ),
    );
  }
}