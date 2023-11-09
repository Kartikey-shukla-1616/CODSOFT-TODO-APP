import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todoapp12/screens/home.dart';
import 'package:todoapp12/screens/splash_screen.dart';
void main () {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'ToDoApp',

        routes: {
          '/': (context) =>
              SplashScreen(
                // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
                child: Home(),
              ),
          // routes it decide the which screen open first

          '/home': (context) => Home(),
        }



      // home: Home(),
    );
  }
}
