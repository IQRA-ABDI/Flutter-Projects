import 'package:flutter/material.dart';
import 'package:protfolio_project/constants.dart';
import 'package:protfolio_project/Homepage.dart';
import 'package:protfolio_project/Aboutme.dart';
import 'package:protfolio_project/Blog.dart';
import 'package:protfolio_project/ContacUs.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Services extends StatelessWidget {
  const Services({Key? key});

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
                  constants(
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
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/web_design.png",
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "Web Design",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "Planning, conceptualizing, and implementing the plan for designing a website in a way that is functional and offers a good user experience.",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/branding.png",
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "Branding",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "Involves defining and communicating the unique characteristics, values, and personality of a brand to establish a strong and recognizable presence in the market.",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/ux_ui.jpeg",
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "UX/UI",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "Identifies new opportunities to create better user experiences and ensure that the end-to-end journey with their products or services meets desired outcomes.",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/mobile_app_development.jpg",
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "Mobile App",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "Processes and procedures involved in writing software for small, wireless computing devices, such as smartphones and other hand-held devices.",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/marketing.jpg",
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "Marketing",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "Activity, set of institutions, and processes for creating, communicating, delivering, and exchanging offerings that have value for customers, clients, partners, and society at large.",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/devops.png",
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "DevOps",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "Evolving and improving products at a faster pace than organizations using traditional software development and infrastructure management processes.",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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