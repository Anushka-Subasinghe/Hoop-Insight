import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
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
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/best'),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 200.0,
                margin: const EdgeInsets.only(top: 100),
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                      border: Border.all(
                          color: const Color(0xff484646),
                          width: 9.0,
                          style: BorderStyle.solid
                      ),
                      image: const DecorationImage(
                        image: AssetImage("assets/Yellowabst1.png"),
                        fit: BoxFit.fill,
                        repeat: ImageRepeat.repeat,
                      ),
                    ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16,),
                  Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0xffFFE66B),
                        width: 2.0,
                        style: BorderStyle.solid
                    ),
                  ),
                  child: const Text(
                  "Best Players",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                        fontFamily: 'Rancho',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 30.0,
                        color: Color(0xff000000),
                  ),
                  textAlign: TextAlign.center,
                )
              ),
                const SizedBox(height: 16,),
                const Text(
                  "A recommendation of best five players for each of the roles with a unique scoring system",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                      fontFamily: 'Rancho',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0,
                      color: Color(0xff000000),
                ),
                ),

                    ],
                  ),
                ),
          ),
            ),
            const SizedBox(height: 30,),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/worst'),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 200,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                  border: Border.all(
                      color: const Color(0xff484646),
                      width: 9.0,
                      style: BorderStyle.solid
                  ),
                  image: const DecorationImage(
                    image: AssetImage("assets/Purpleabstract1.png"),
                    fit: BoxFit.fill,
                    repeat: ImageRepeat.repeat,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 16,),
                    Text(
                      "Under Performers",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Rancho',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 30.0,
                        color: Color(0xff000000),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16,),
                    Text(
                      "Five under performers for each of the roles with a unique scoring system",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Rancho',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0,
                        color: Color(0xff000000),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            const SizedBox(height: 30,),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/score'),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 200,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                  border: Border.all(
                      color: const Color(0xff484646),
                      width: 9.0,
                      style: BorderStyle.solid
                  ),
                  image: const DecorationImage(
                    image: AssetImage("assets/Greenabstract.png"),
                    fit: BoxFit.fill,
                    repeat: ImageRepeat.repeat,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 16,),
                    Text(
                      "Calculate Player Score",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Rancho',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 30.0,
                        color: Color(0xff000000),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16,),
                    Text(
                      "Enter the relevant data of a new player and use the prediction model to calculate the player score",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Rancho',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0,
                        color: Color(0xff000000),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            const SizedBox(height: 30,),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/comparison'),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 200,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                  border: Border.all(
                      color: const Color(0xff484646),
                      width: 9.0,
                      style: BorderStyle.solid
                  ),
                  image: const DecorationImage(
                    image: AssetImage("assets/Redabstract.png"),
                    fit: BoxFit.fill,
                    repeat: ImageRepeat.repeat,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 16,),
                    Text(
                      "Compare Players",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Rancho',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 30.0,
                        color: Color(0xff000000),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16,),
                    Text(
                      "Compare the stats of two players in side by side views",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Rancho',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0,
                        color: Color(0xff000000),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            const SizedBox(height: 30,)
          ]
        ),
      ),
    );
  }
}
        