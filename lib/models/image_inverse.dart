import 'package:flutter/material.dart';
import 'package:people_information/models/phone_number.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageInverse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Image(image: AssetImage("assets/image/fondoimage.png")),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(
                          width: 100,
                          height: 100,
                          child: Image(
                              image: AssetImage("assets/image/logo.png"))),
                      Text(
                        "IMAGE INVERSE",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFFF20D625)),
                      ),
                    ],
                  ),
                  Botton(() async {
                    const url = "https://images.google.com/";
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw "Could not launch $url";
                    }
                  }, "GOOGLE INVERSE"),
                  Botton(() async {
                    const url =
                        "https://dnschecker.org/reverse-image-search.php";
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw "Could not launch $url";
                    }
                  }, "DNSCHECKER WEB"),
                  Botton(() async {
                    const url = "https://www.revesesearch.com/";
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw "Could not launch $url";
                    }
                  }, "REVERSESEARCH"),
                  Botton(() async {
                    const url =
                        "https://www.duplichecker.com/es/reverse-image-search.php/";
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw "Could not launch $url";
                    }
                  }, "DUPLICHECKER"),
                ],
              ),
            )
          ],
        ));
  }
}
