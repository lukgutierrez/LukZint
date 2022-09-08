import 'package:flutter/material.dart';
import 'package:people_information/models/cars_investigation.dart';
import 'package:people_information/models/correo_investigation.dart';
import 'package:people_information/models/google_hacking.dart';
import 'package:people_information/models/image_inverse.dart';
import 'package:people_information/models/people_investigation.dart';
import 'package:people_information/models/phone_number.dart';
import 'package:people_information/models/target_credit.dart';
import 'package:people_information/models/ubication_people.dart';

/////////////PAGEWELCOMEPRINCIPAL//////////////////////////////

class PageInformation extends StatelessWidget {
  const PageInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image(image: AssetImage("assets/image/fondoimage.png")),
          ListView(
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      SizedBox(
                          width: 150,
                          height: 150,
                          child: Image(
                              image: AssetImage("assets/image/logo.png"))),
                      Text(
                        "WELCOME!",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFFF20D625),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Divider(
                    height: 20,
                  ),
                  Bottom(
                      AssetImage("assets/image/phone.png"),
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PhoneNumbers()),
                        );
                      },
                      AssetImage("assets/image/image.png"),
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ImageInverse()),
                        );
                      }),
                  Divider(height: 20),
                  Bottom(
                      AssetImage("assets/image/correo.png"),
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CorreoInvestigation()),
                        );
                      },
                      AssetImage("assets/image/people.png"),
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PeopleInvestigation()),
                        );
                      }),
                  Divider(height: 20),
                  Bottom(
                      AssetImage("assets/image/ubication.png"),
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UbicationPeople()),
                        );
                      },
                      AssetImage("assets/image/car.png"),
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CarsInvestigation()),
                        );
                      }),
                  Divider(height: 20),
                  Bottom(
                      AssetImage("assets/image/credit.png"),
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CreditCard()),
                        );
                      },
                      AssetImage("assets/image/google.png"),
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GoogleHaking()),
                        );
                      }),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Bottom(assetsimage, pagina, assetsimage2, pagina2) {
  return Container(
    width: 280,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          child: Container(
            width: 100,
            height: 100,
            child: Image(image: assetsimage),
          ),
          onTap: pagina,
        ),
        GestureDetector(
          child: Container(
              width: 100, height: 100, child: Image(image: assetsimage2)),
          onTap: pagina2,
        )
      ],
    ),
  );
}
