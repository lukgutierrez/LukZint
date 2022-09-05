import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageTest extends StatelessWidget {
  const HomePageTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PageOne()),
                          );
                        },
                        child: Container(
                          child: Text("PageOne"),
                        )),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PageTwo()),
                          );
                        },
                        child: Container(
                          child: Text("Navegadores"),
                        )),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: luk,
                        child: Container(
                          child: Text("Url"),
                        )),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PageOne()),
                          );
                        },
                        child: Container(
                          child: Text("url"),
                        )),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PageTwo()),
                          );
                        },
                        child: Container(
                          child: Text("url"),
                        )),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: luk,
                        child: Container(
                          child: Text("Url"),
                        )),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: "https://dnschecker.org/reverse-image-search.php",
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl:
          "https://es.wikipedia.org/wiki/Anexo:Prefijos_telef%C3%B3nicos_mundiales",
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}

class PageThree extends StatefulWidget {
  const PageThree();

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: "https://www.informesenlinea.com/detectar-empresa-telefono",
      javascriptMode: JavascriptMode.disabled,
    );
  }
}

luk() async {
  const url = "https://dnschecker.org/reverse-image-search.php";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw "Could not launch $url";
  }
}
