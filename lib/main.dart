import 'package:flutter/material.dart';
import 'package:people_information/pages/Information_Page.dart';
import 'package:people_information/pages/test_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: PageInformation());
  }
}
