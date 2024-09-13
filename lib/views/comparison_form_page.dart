import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ComparisonFormPage extends StatefulWidget {
  const ComparisonFormPage({super.key});

  @override
  ComparisonFormPageState createState() => ComparisonFormPageState();
}

class ComparisonFormPageState extends State<ComparisonFormPage> {
  String getPlayer = 'http://10.0.2.2:5000/getPlayer';

  // Define a map to store the values entered in the input fields
  final Map<String, dynamic> _formData = {};

  // Define a TextEditingController for each input field
  final TextEditingController _p1Controller = TextEditingController();
  final TextEditingController _p2Controller = TextEditingController();

  getPlayers(String name) async {
    try {
      final uri = Uri.parse("$getPlayer?name=$name");
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        final player = jsonResponse['player'];
        return player;
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color : Color.fromRGBO(249, 70, 69, 1),
          image: DecorationImage(
            image: AssetImage("assets/Redremovebgpreview1.png"),
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
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.7),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "PLAYER COMPARISON",
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
                        child: const Text(
                          "Select the two player names that is required to be compared",
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
                Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(28),
                        topRight: Radius.circular(28),
                        bottomLeft: Radius.circular(28),
                        bottomRight: Radius.circular(28),
                      ),
                      color : Color.fromRGBO(56, 21, 21, 0.7799999713897705),
                    ),
                  child: const Text('Enter the player names to the fields below', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'PT Sans Narrow',
                      fontSize: 23,
                      fontWeight: FontWeight.normal,
                      height: 1.5,
                      decoration: TextDecoration.none
                  ),),
                ),
                const SizedBox(height: 20,),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextField(
                      controller: _p1Controller,
                      style: const TextStyle(
                        color: Colors.black, // Adjust the text color for better visibility
                      ),
                      decoration: const InputDecoration(
                        labelText: 'Player 1',
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black, // Adjust the label text color
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                          borderSide: BorderSide(color: Colors.white), // Adjust the border color
                        ),
                        filled: true,
                        fillColor: Colors.white, // Adjust the background color opacity
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: (value) => _formData['p1'] = int.tryParse(value),
                    )
                ),
                const SizedBox(height: 30.0),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextField(
                      controller: _p2Controller,
                      style: const TextStyle(
                        color: Colors.black, // Adjust the text color for better visibility
                      ),
                      decoration: const InputDecoration(
                        labelText: 'Player 2',
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black, // Adjust the label text color
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                          borderSide: BorderSide(color: Colors.white), // Adjust the border color
                        ),
                        filled: true,
                        fillColor: Colors.white, // Adjust the background color opacity
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: (value) => _formData['p2'] = int.tryParse(value),
                    )
                ),
                const SizedBox(height: 50.0),
                GestureDetector(
                  onTap: () async {
                    var player1 = await getPlayers(_p1Controller.text);
                    var player2 = await getPlayers(_p2Controller.text);

                    Navigator.pushNamed(context, '/compare', arguments: { player1: player1, player2: player2 });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius : const BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                          bottomLeft: Radius.circular(35),
                          bottomRight: Radius.circular(35),
                        ),
                        boxShadow : const [BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(-4,4),
                            blurRadius: 4
                        )],
                        color : const Color.fromRGBO(56, 21, 21, 1),
                        border : Border.all(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          width: 1,
                        ),
                      ),
                      child: const Text('Submit', textAlign: TextAlign.center, style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'PT Serif',
                          fontSize: 27,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1
                      ),),
                  ),
                )
              ]
          ),
        ),
      ),
    );
  }
}