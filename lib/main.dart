import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hoop_insight/views/best_performers.dart';
import 'package:hoop_insight/views/best_players.dart';
import 'package:hoop_insight/views/calculate_player_score.dart';
import 'package:hoop_insight/views/comparison_form_page.dart';
import 'package:hoop_insight/views/comparison_page.dart';
import 'package:hoop_insight/views/home_page.dart';
import 'package:hoop_insight/views/login_page.dart';
import 'package:hoop_insight/views/register_page.dart';
import 'package:hoop_insight/views/under_performers.dart';
import 'package:hoop_insight/views/welcome_page.dart';
import 'package:hoop_insight/views/worst_players.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

final Map<String, WidgetBuilder> routes = {
  '/login': (BuildContext context) => LoginPage(),
  '/register': (BuildContext context) => RegisterPage(),
  '/home': (BuildContext context) => const HomePage(),
  '/best': (BuildContext context) => const BestPlayersPage(),
  '/worst': (BuildContext context) => const WorstPlayersPage(),
  '/bestP': (BuildContext context) => const BestPerformersPage(),
  '/worstP': (BuildContext context) => const UnderPerformersPage(),
  '/score': (BuildContext context) => const CalculatePlayerScorePage(),
  '/comparison': (BuildContext context) => const ComparisonFormPage(),
  '/compare': (BuildContext context) => const ComparisonPage(),
};


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: WillPopScope(
        onWillPop: () async {
        if (Navigator.of(context).canPop()) {
        // If there are previous screens in the navigation stack,
        // go back to the previous screen.
        Navigator.of(context).pop();
        return false; // prevent the app from closing
        } else {
        // If there are no previous screens in the navigation stack,
        // allow the app to close.
        return true;
        }
        },
    child: const WelcomePage(),
      ),
    );
  }
}
