import 'package:flutter/material.dart';
import 'package:unitconverterapp/screens/category_screen.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(builder: (context) => MyApp(),),
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.of(context).locale,
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context).copyWith(
        backgroundColor: Color(0xff3b3865),
        primaryColorLight: Color(0xff3b3865),
        primaryColorDark: Color(0xff9677ee),
        textTheme: Theme.of(context).textTheme.copyWith(
              headline: TextStyle(
                fontFamily: 'Roboto_Con',
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Color(0xff1d2440),
                shadows: [
                  Shadow(
                    color: Color(0xffd6e0e9),
                    offset: Offset(0.0, 0.0),
                    blurRadius: 15,
                  ),
                ],
              ),
              title: TextStyle(
                fontFamily: 'Roboto_Con',
                fontSize: 56,
                fontWeight: FontWeight.bold,
                color: Color(0xfffaf9ff),
                shadows: [
                  Shadow(
                    color: Color(0xffd6e0e9),
                    offset: Offset(0.0, 0.0),
                    blurRadius: 1,
                  ),
                ],
              ),
              caption: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                color: Color(0xff404047),
                fontSize: 20,
              ),
              subhead: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                fontSize: 17,
                color: Color(0xff7655c8),
              ),
            ),
      ),
      title: 'Unit Converter',
      home: CategoryScreen(),
    );
  }
}
