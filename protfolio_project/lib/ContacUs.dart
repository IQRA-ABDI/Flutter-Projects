import 'package:flutter/material.dart';
import 'package:protfolio_project/Services.dart';
import 'package:protfolio_project/constants.dart';
import 'package:protfolio_project/Homepage.dart';
import 'package:protfolio_project/Aboutme.dart';
import 'package:protfolio_project/Blog.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
                color: Color.fromARGB(255, 227, 239, 245),
              ),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, right: 600),
                    child: Image.asset(
                      "assets/images/protfolioicon1.png",
                      width: 100,
                      height: 50,
                    ),
                  ),
                  constants(
                    press: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const MyHomePage(),
                        ),
                      );
                    },
                    text: "Home",
                    textcolor: Colors.black,
                    color: Colors.transparent,
                  ),
                  constants(
                    press: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const AboutMe(),
                        ),
                      );
                    },
                    text: "About me",
                    textcolor: Colors.black,
                    color: Colors.transparent,
                  ),
                  constants(
                    press: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Services(),
                        ),
                      );
                    },
                    text: "Services",
                    textcolor: Colors.black,
                    color: Colors.transparent,
                  ),
                  constants(
                    press: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Blog(),
                        ),
                      );
                    },
                    text: "Blog",
                    textcolor: Colors.black,
                    color: Colors.transparent,
                  ),
                  Container(
                    width: 150, // Set the desired width for the "Contact me" text
                    child: constants(
                      press: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ContactUs(),
                          ),
                        );
                      },
                      text: "Contact me",
                      textcolor: Colors.black,
                      color: Colors.transparent,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Container(
                width: 500, 
                height: 450,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                  color: Color.fromARGB(255, 227, 239, 245),
                ),
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Contact Information',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30.0),
                    ContactRow(
                      icon: Icons.location_on,
                      label: 'Address',
                      value: 'jidka sodonka, warta nabada, Mogadisho, Somalia',
                    ),
                    SizedBox(height: 30.0),
                    ContactRow(
                      icon: Icons.email,
                      label: 'Gmail',
                      value: 'ekroabdihussein@gmail.com',
                    ),
                    SizedBox(height: 30.0),
                    ContactRow(
                      icon: Icons.phone,
                      label: 'Phone Number',
                      value: '+252612005457',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 227, 239, 245),
        child: Container(
          height: 80.0,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '© 2023 Iqra',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.envelope),
                    onPressed: () {
                      launch('mailto:ekroabdihussein@gmail.com');
                    },
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.linkedin),
                    onPressed: () {
                      launch(
                          'https://www.linkedin.com/in/iqra-hussein-743aa322b');
                    },
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.github),
                    onPressed: () {
                      launch('https://github.com/IQRA-ABDI');
                    },
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.facebook),
                    onPressed: () {
                      launch(
                          'https://www.facebook.com/iqra.abdihussein.54?mibextid=LQQJ4d');
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class ContactRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const ContactRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
          color: Colors.white,
        ),
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.blue),
            SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  value,
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
