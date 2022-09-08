import 'package:flutter/material.dart';
import 'package:people_information/models/phone_number.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CarsInvestigation extends StatelessWidget {
  const CarsInvestigation({Key? key}) : super(key: key);

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
                        "CARS INVESTIGATION",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFFF20D625)),
                      ),
                    ],
                  ),
                  Botton(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CarOne()),
                    );
                  }, "MODELO DE AUTO"),
                  Botton(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CarTwo()),
                    );
                  }, "RADICACIÓN DE PATENTE"),
                  Botton(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CarThree()),
                    );
                  }, "TENÉS MULTA?"),
                ],
              ),
            )
          ],
        ));
  }
}

class CarOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: "https://www.datacar.com.ar/",
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}

class CarTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: "https://www.dnrpa.gov.ar/portal_dnrpa/",
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}

class CarThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: "https://infractores.padron.gob.ar/",
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
