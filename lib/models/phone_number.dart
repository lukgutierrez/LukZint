import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PhoneNumbers extends StatelessWidget {
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
                        "PHONE NUMBERS",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFFF20D625)),
                      ),
                    ],
                  ),
                  Botton(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PhoneOne()),
                    );
                  }, "CODIGO INTERNACIONAL"),
                  Botton(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PhoneTwo()),
                    );
                  }, "CODIGO NACIONAL"),
                  Botton(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PhoneThree()),
                    );
                  }, "CODIGO NACIONAL PROFECIONAL"),
                  Botton(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PhoneFour()),
                    );
                  }, "EMPRESA DE CELULAR"),
                ],
              ),
            )
          ],
        ));
  }
}

class PhoneOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl:
          "https://es.wikipedia.org/wiki/Anexo:Prefijos_telef%C3%B3nicos_mundiales",
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}

class PhoneTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl:
          "https://es.wikipedia.org/wiki/N%C3%BAmeros_telef%C3%B3nicos_en_Argentina",
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}

class PhoneThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: "https://www.argentina.gob.ar/pais/codigo-telefonia/",
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}

class PhoneFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: "https://www.datacels.com/detectar-empresa-telefono",
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}

Botton(page, name) {
  return SizedBox(
    width: 250,
    height: 50,
    child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color(0xFFF20D625)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ))),
        onPressed: page,
        child: Container(
          child: Text(
            name,
            style: TextStyle(color: Colors.black, fontSize: 13),
          ),
        )),
  );
}
