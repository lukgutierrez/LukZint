import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class PhoneNumbers extends StatelessWidget {
  const PhoneNumbers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Image(image: AssetImage("assets/image/phoneimage.png")),
          Column(
            children: [
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFFF20D625)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ))),
                  onPressed: () {},
                  child: Container(
                    child: Text(
                      "Codigo Area Nacional",
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
