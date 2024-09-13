import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  WelcomePageState createState() => WelcomePageState();
}

class WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {

    return Container(
        decoration: const BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
          image : DecorationImage(
              image: AssetImage('assets/Bg31.png'),
              fit: BoxFit.fill
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                          height: 300,
                    width: 600,
                    margin: const EdgeInsets.only(left: 130, top: 100),
                          decoration: const BoxDecoration(
                            image : DecorationImage(
                                image: AssetImage('assets/Orangebg2removebgpreview11.png'),
                                fit: BoxFit.fitWidth
                            ),
                          )
                      ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/login'),
                      child: Container(
                        width: 300,
                        margin: const EdgeInsets.only(top: 200, bottom: 25),
                        decoration: const BoxDecoration(
                          borderRadius : BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                          boxShadow : [BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(-10,10),
                              blurRadius: 4
                          )],
                          gradient : LinearGradient(
                              begin: Alignment(6.123234262925839e-17,1),
                              end: Alignment(-1,6.123234262925839e-17),
                              colors: [Color.fromRGBO(246, 195, 148, 1),Color.fromRGBO(246, 141, 46, 1),Color.fromRGBO(209, 87, 0, 0.8799999952316284)]
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                        child: const Text('Login', textAlign: TextAlign.center, style: TextStyle(
                            decoration: TextDecoration.none,
                                  color: Color.fromRGBO(130, 53, 57, 1),
                                  fontFamily: 'Road Rage',
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),),
                      ),
                    ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/register'),
                  child: Container(
                    width: 300,
                    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                          decoration: const BoxDecoration(
                            borderRadius : BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                            ),
                            boxShadow : [BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                offset: Offset(-10,10),
                                blurRadius: 4
                            )],
                            gradient : LinearGradient(
                                begin: Alignment(6.123234262925839e-17,1),
                                end: Alignment(-1,6.123234262925839e-17),
                                colors: [Color.fromRGBO(247, 195, 149, 1),Color.fromRGBO(246, 141, 46, 1),Color.fromRGBO(209, 87, 0, 0.8799999952316284)]
                            ),
                          ),
                          child: const Text('Register', textAlign: TextAlign.center, style: TextStyle(
                              decoration: TextDecoration.none,
                                          color: Color.fromRGBO(130, 53, 57, 1),
                                          fontFamily: 'Road Rage',
                                          fontSize: 20,
                              fontWeight: FontWeight.normal,
                              height: 1
                                      ),),

                      ),
                ),
              ]
          ),
        ),
    );
  }
}