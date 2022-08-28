import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
        ),
        body: Row(
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
                    onPressed: () {},
                    child: Container(
                      child: Text("Navegadores"),
                    )),
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      child: Text("Navegadores"),
                    )),
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
      initialUrl: "https://fast.com/es/",
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
