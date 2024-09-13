import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CalculatePlayerScorePage extends StatefulWidget {
  const CalculatePlayerScorePage({super.key});

  @override
  _CalculatePlayerScorePageState createState() => _CalculatePlayerScorePageState();
}

class _CalculatePlayerScorePageState extends State<CalculatePlayerScorePage> {
  // Define a map to store the values entered in the input fields
  final Map<String, dynamic> _formData = {};

  // Define a TextEditingController for each input field
  final TextEditingController _gController = TextEditingController();
  final TextEditingController _mpController = TextEditingController();
  final TextEditingController _fgController = TextEditingController();
  final TextEditingController _fgaController = TextEditingController();
  final TextEditingController _x3pController = TextEditingController();
  final TextEditingController _x2pController = TextEditingController();
  final TextEditingController _ftController = TextEditingController();
  final TextEditingController _ftaController = TextEditingController();
  final TextEditingController _orbController = TextEditingController();
  final TextEditingController _drbController = TextEditingController();
  final TextEditingController _trbController = TextEditingController();
  final TextEditingController _astController = TextEditingController();
  final TextEditingController _stlController = TextEditingController();
  final TextEditingController _blkController = TextEditingController();
  final TextEditingController _tovController = TextEditingController();
  final TextEditingController _pfController = TextEditingController();
  final TextEditingController _ptsController = TextEditingController();

  String _output = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 120.0,
                margin: const EdgeInsets.only(top: 20, bottom: 30),
                padding: const EdgeInsets.only(top: 10),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.7),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Calculate Player Score",
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
                      margin: const EdgeInsets.only(left: 10, top: 20),
                      child: const Text(
                        'Enter the following player stats:',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                  controller: _gController,
                  style: const TextStyle(
                    color: Colors.white, // Adjust the text color for better visibility
                  ),
                  decoration: InputDecoration(
                    labelText: 'G',
                    labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white, // Adjust the label text color
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.white), // Adjust the border color
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                    filled: true,
                    fillColor: Colors.orange.withOpacity(0.6), // Adjust the background color opacity
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) => _formData['g'] = int.tryParse(value),
                )
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextField(
                    controller: _mpController,
                    style: const TextStyle(
                      color: Colors.white, // Adjust the text color for better visibility
                    ),
                    decoration: InputDecoration(
                      labelText: 'MP',
                      labelStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white, // Adjust the label text color
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white), // Adjust the border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      filled: true,
                      fillColor: Colors.orange.withOpacity(0.6), // Adjust the background color opacity
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) => _formData['mp'] = int.tryParse(value),
                  )
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextField(
                    controller: _fgController,
                    style: const TextStyle(
                      color: Colors.white, // Adjust the text color for better visibility
                    ),
                    decoration: InputDecoration(
                      labelText: 'FG',
                      labelStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white, // Adjust the label text color
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white), // Adjust the border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      filled: true,
                      fillColor: Colors.orange.withOpacity(0.6), // Adjust the background color opacity
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) => _formData['fg'] = int.tryParse(value),
                  )
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextField(
                    controller: _fgaController,
                    style: const TextStyle(
                      color: Colors.white, // Adjust the text color for better visibility
                    ),
                    decoration: InputDecoration(
                      labelText: 'FGA',
                      labelStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white, // Adjust the label text color
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white), // Adjust the border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      filled: true,
                      fillColor: Colors.orange.withOpacity(0.6), // Adjust the background color opacity
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) => _formData['fga'] = int.tryParse(value),
                  )
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextField(
                    controller: _x3pController,
                    style: const TextStyle(
                      color: Colors.white, // Adjust the text color for better visibility
                    ),
                    decoration: InputDecoration(
                      labelText: '3P',
                      labelStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white, // Adjust the label text color
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white), // Adjust the border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      filled: true,
                      fillColor: Colors.orange.withOpacity(0.6), // Adjust the background color opacity
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) => _formData['x3p'] = int.tryParse(value),
                  )
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextField(
                    controller: _x2pController,
                    style: const TextStyle(
                      color: Colors.white, // Adjust the text color for better visibility
                    ),
                    decoration: InputDecoration(
                      labelText: '2P',
                      labelStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white, // Adjust the label text color
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white), // Adjust the border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      filled: true,
                      fillColor: Colors.orange.withOpacity(0.6), // Adjust the background color opacity
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) => _formData['x2p'] = int.tryParse(value),
                  )
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextField(
                    controller: _ftController,
                    style: const TextStyle(
                      color: Colors.white, // Adjust the text color for better visibility
                    ),
                    decoration: InputDecoration(
                      labelText: 'FT',
                      labelStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white, // Adjust the label text color
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white), // Adjust the border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      filled: true,
                      fillColor: Colors.orange.withOpacity(0.6), // Adjust the background color opacity
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) => _formData['ft'] = int.tryParse(value),
                  )
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextField(
                    controller: _ftaController,
                    style: const TextStyle(
                      color: Colors.white, // Adjust the text color for better visibility
                    ),
                    decoration: InputDecoration(
                      labelText: 'FTA',
                      labelStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white, // Adjust the label text color
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white), // Adjust the border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      filled: true,
                      fillColor: Colors.orange.withOpacity(0.6), // Adjust the background color opacity
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) => _formData['fta'] = int.tryParse(value),
                  )
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextField(
                    controller: _orbController,
                    style: const TextStyle(
                      color: Colors.white, // Adjust the text color for better visibility
                    ),
                    decoration: InputDecoration(
                      labelText: 'ORB',
                      labelStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white, // Adjust the label text color
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white), // Adjust the border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      filled: true,
                      fillColor: Colors.orange.withOpacity(0.6), // Adjust the background color opacity
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) => _formData['orb'] = int.tryParse(value),
                  )
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextField(
                    controller: _drbController,
                    style: const TextStyle(
                      color: Colors.white, // Adjust the text color for better visibility
                    ),
                    decoration: InputDecoration(
                      labelText: 'DRB',
                      labelStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white, // Adjust the label text color
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white), // Adjust the border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      filled: true,
                      fillColor: Colors.orange.withOpacity(0.6), // Adjust the background color opacity
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) => _formData['drb'] = int.tryParse(value),
                  )
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextField(
                    controller: _trbController,
                    style: const TextStyle(
                      color: Colors.white, // Adjust the text color for better visibility
                    ),
                    decoration: InputDecoration(
                      labelText: 'TRB',
                      labelStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white, // Adjust the label text color
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white), // Adjust the border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      filled: true,
                      fillColor: Colors.orange.withOpacity(0.6), // Adjust the background color opacity
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) => _formData['trb'] = int.tryParse(value),
                  )
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextField(
                    controller: _astController,
                    style: const TextStyle(
                      color: Colors.white, // Adjust the text color for better visibility
                    ),
                    decoration: InputDecoration(
                      labelText: 'AST',
                      labelStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white, // Adjust the label text color
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white), // Adjust the border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      filled: true,
                      fillColor: Colors.orange.withOpacity(0.6), // Adjust the background color opacity
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) => _formData['ast'] = int.tryParse(value),
                  )
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextField(
                    controller: _stlController,
                    style: const TextStyle(
                      color: Colors.white, // Adjust the text color for better visibility
                    ),
                    decoration: InputDecoration(
                      labelText: 'STL',
                      labelStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white, // Adjust the label text color
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white), // Adjust the border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      filled: true,
                      fillColor: Colors.orange.withOpacity(0.6), // Adjust the background color opacity
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) => _formData['stl'] = int.tryParse(value),
                  )
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextField(
                    controller: _blkController,
                    style: const TextStyle(
                      color: Colors.white, // Adjust the text color for better visibility
                    ),
                    decoration: InputDecoration(
                      labelText: 'BLK',
                      labelStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white, // Adjust the label text color
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white), // Adjust the border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      filled: true,
                      fillColor: Colors.orange.withOpacity(0.6), // Adjust the background color opacity
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) => _formData['blk'] = int.tryParse(value),
                  )
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextField(
                    controller: _tovController,
                    style: const TextStyle(
                      color: Colors.white, // Adjust the text color for better visibility
                    ),
                    decoration: InputDecoration(
                      labelText: 'TOV',
                      labelStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white, // Adjust the label text color
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white), // Adjust the border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      filled: true,
                      fillColor: Colors.orange.withOpacity(0.6), // Adjust the background color opacity
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) => _formData['tov'] = int.tryParse(value),
                  )
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextField(
                    controller: _pfController,
                    style: const TextStyle(
                      color: Colors.white, // Adjust the text color for better visibility
                    ),
                    decoration: InputDecoration(
                      labelText: 'PF',
                      labelStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white, // Adjust the label text color
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white), // Adjust the border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      filled: true,
                      fillColor: Colors.orange.withOpacity(0.6), // Adjust the background color opacity
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) => _formData['pf'] = int.tryParse(value),
                  )
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextField(
                    controller: _ptsController,
                    style: const TextStyle(
                      color: Colors.white, // Adjust the text color for better visibility
                    ),
                    decoration: InputDecoration(
                      labelText: 'PTS',
                      labelStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white, // Adjust the label text color
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white), // Adjust the border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      filled: true,
                      fillColor: Colors.orange.withOpacity(0.6), // Adjust the background color opacity
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) => _formData['pts'] = int.tryParse(value),
                  )
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () async {
                  var headers = {
                    'Content-Type': 'application/x-www-form-urlencoded'
                  };
                  var request = http.Request('POST', Uri.parse('http://10.0.2.2:5000/predict'));
                  request.bodyFields = {
                    'x': _gController.text,
                    'v': _mpController.text,
                    'a': _fgController.text,
                    's': _fgaController.text,
                    'c': _x3pController.text,
                    'hl': _x2pController.text,
                    'f': _ftController.text,
                    'q': _ftaController.text,
                    'l': _orbController.text,
                    'ml': _drbController.text,
                    'g': _trbController.text,
                    'lw,f': _astController.text,
                    'kh': _stlController.text,
                    'gpk': _blkController.text,
                    'kmk': _tovController.text,
                    'kgme': _pfController.text,
                    'plp': _ptsController.text,
                  };
                  request.headers.addAll(headers);

                  http.StreamedResponse response = await request.send();

                  if (response.statusCode == 200) {
                    var res = await response.stream.bytesToString();
                    Map<String, dynamic> data = jsonDecode(res);
                    var prediction = data['prediction'];
                    setState(() {
                      _output = prediction;
                    });
                  }
                  else {
                    print(response.reasonPhrase);
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlueAccent,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Get Predicted Position",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                _output ?? '',
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Adjust the text color
                  fontStyle: FontStyle.italic, // Add italic style
                  decoration: TextDecoration.none, // Add underline decoration
                  decorationColor: Colors.blue, // Adjust the underline color
                  decorationThickness: 2.0, // Adjust the underline thickness
                ),
              ),
              const SizedBox(height: 30.0),
            ]),
          ),
        ));}}