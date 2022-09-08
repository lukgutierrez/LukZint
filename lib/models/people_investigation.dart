import 'package:flutter/material.dart';
import 'package:people_information/models/phone_number.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PeopleInvestigation extends StatelessWidget {
  const PeopleInvestigation({Key? key}) : super(key: key);

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
                        "DATE PEOPLE",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFFF20D625)),
                      ),
                    ],
                  ),
                  Botton(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PeopleOne()),
                    );
                  }, "DNI PEOPLE"),
                  Botton(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PeopleTwo()),
                    );
                  }, "CUIL CONSTANCIA"),
                  Botton(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PeopleThree()),
                    );
                  }, "NEGATIVA ANSES"),
                  Botton(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PeopleFour()),
                    );
                  }, "CERTIFICADO DEUDOR"),
                  Botton(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PeopleSix()),
                    );
                  }, "DATE BASE GENERAL"),
                ],
              ),
            )
          ],
        ));
  }
}

class PeopleOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: "https://informes.nosis.com/",
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}

class PeopleTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: "https://www.anses.gob.ar/consulta/constancia-de-cuil ",
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}

class PeopleThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: "",
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}

class PeopleFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: "https://www.justiciasalta.gov.ar/es/certificado-deudores",
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}

class PeopleFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: "https://www.sssalud.gob.ar",
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}

class PeopleSix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: "https://www.argentina.gob.ar/aaip/datospersonales/reclama",
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
