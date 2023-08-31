import 'package:flutter/material.dart';
import 'package:protfolio_project/Aboutme.dart';
import 'package:protfolio_project/Blog.dart';
import 'package:protfolio_project/ContacUs.dart';
import 'package:protfolio_project/Services.dart';
import 'package:protfolio_project/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _homepageState();
}

class _homepageState extends State<MyHomePage> {
  void hireMeAction() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const ContactUs()),
    );
  }

  void readMoreAction() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const AboutMe()),
    );
  }

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
                            builder: (context) => const MyHomePage()),
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
                            builder: (context) => const AboutMe()),
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
                            builder: (context) => const Services()),
                      );
                    },
                    text: "Services",
                    textcolor: Colors.black,
                    color: Colors.transparent,
                  ),
                  constants(
                    press: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Blog()),
                      );
                    },
                    text: "Blog",
                    textcolor: Colors.black,
                    color: Colors.transparent,
                  ),
                  constants(
                    press: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const ContactUs()),
                      );
                    },
                    text: "Contact me",
                    textcolor: Colors.black,
                    color: Colors.transparent,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Najma Yusuf Ali",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                            margin: EdgeInsets.only(top: 30, left: 30),
                          ),
                          Container(
                            child: Text(
                              "Creative Developer",
                              style:
                                  TextStyle(fontSize: 50, color: Colors.black),
                            ),
                            margin: EdgeInsets.only(top: 10),
                          ),
                          Container(
                            child: Text(
                              "Hi, I’m Najma. I’m a Software Developer. If you are looking for a Developer to build your products",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                            margin: EdgeInsets.only(top: 30),
                          ),
                          Container(
                            child: Text(
                              "and grow your business, let's shake hands with me.",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                            margin: EdgeInsets.only(top: 10),
                          ),
                          SizedBox(
                            height: 40,
                            width: 80,
                          ),
                          ElevatedButton(
                            onPressed: hireMeAction,
                            child: Text(
                              "Hire me",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                          SizedBox(height: 10, width: 80),
                          ElevatedButton(
                            onPressed: readMoreAction,
                            child: Text(
                              "Read More",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                          Container(
                            child: Text(
                              "I am currently open for part-time work",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                            margin: EdgeInsets.only(top: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 350,
                    height: 370,
                    child: Image.asset(
                      "assets/images/pic.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
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
