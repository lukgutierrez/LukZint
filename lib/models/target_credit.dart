import 'package:flutter/material.dart';
import 'package:people_information/models/phone_number.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Image(image: AssetImage("assets/image/fondoimage.png")),
            Center(
              child: Column(
                children: [
                  Column(
                    children: [
                      SizedBox(
                          width: 100,
                          height: 100,
                          child: Image(
                              image: AssetImage("assets/image/logo.png"))),
                      Text(
                        "TARJET CREDIT",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFFF20D625)),
                      ),
                    ],
                  ),
                  Divider(
                    height: 40,
                  ),
                  Botton(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreditOne()),
                    );
                  }, "VALIDAR TARJETA"),
                ],
              ),
            )
          ],
        ));
  }
}

class CreditOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl:
          "https://www.vccgenerator.org/es/validador-de-tarjeta-de-credito/",
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
