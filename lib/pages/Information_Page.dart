import 'package:flutter/material.dart';
import 'package:people_information/models/phone_number.dart';

class PageInformation extends StatelessWidget {
  const PageInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Container(
                      width: 100,
                      height: 100,
                      child: Image(image: AssetImage("assets/image/phone.png")),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PhoneNumbers()),
                      );
                    },
                  ),
                  Container(
                      width: 100,
                      height: 100,
                      child: Image(image: AssetImage("assets/image/car.png")))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
