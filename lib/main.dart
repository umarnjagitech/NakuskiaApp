import 'package:flutter/material.dart';
//import 'package:splashscreen/splashscreen.dart';
import 'package:nakuskia_app/auth/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voice Journal',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity, colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey).copyWith(surface: Colors.green[50]),
      ),
      // TODO Change App Theme to something other than Vanilla
      home: Login(),
      /*SplashScreen(
        seconds: 8,
        navigateAfterSeconds: const WalkthroughScreen(),
        image: Image.asset('assets/logo.png'),
        photoSize: 100.0,
        backgroundColor: Colors.green[50],
        styleTextUnderTheLoader: const TextStyle(),
        loaderColor: Colors.black,
      ),*/
      debugShowCheckedModeBanner: false,
    );
  }
}
