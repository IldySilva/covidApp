import 'package:NewCovidApp/Screens/homePage.dart';
import 'package:NewCovidApp/stores/controlador.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Controlador controlador = Get.put(Controlador());
  // This widget is the root of your application.
  ThemeData claro = ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      iconTheme: IconThemeData(color: Colors.white));
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: claro,
      home: Center(
        child: SplashScreen(
            backgroundColor: Colors.white,
            image: Image.asset("lib/assets/useMask.png"),
            photoSize: 100,
            seconds: 3,
            loaderColor: Colors.transparent,
            navigateAfterSeconds: HomePage()),
      ),
    );
  }
}
