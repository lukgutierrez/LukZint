import 'package:flutter/material.dart';
import 'package:people_information/pages/Information_Page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'LukZint',
        theme: ThemeData(
          primaryColor: Color(0xFFF20D625),
        ),
        home: PageInformation());
  }
}
