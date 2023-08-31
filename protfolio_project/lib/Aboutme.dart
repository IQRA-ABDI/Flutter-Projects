import 'package:flutter/material.dart';
import 'package:protfolio_project/Blog.dart';
import 'package:protfolio_project/ContacUs.dart';
import 'package:protfolio_project/Services.dart';
import 'package:protfolio_project/constants.dart';
import 'package:protfolio_project/Homepage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key});

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
                    press: () {},
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
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage(
                "assets/images/Sof (1).jpg",
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Iqra Abdi',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Software Engineer',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Hello, I'm Iqra Abdifitax Hussein, a passionate and dedicated software engineer. With a strong background in computer science, I create innovative solutions to complex problems.\n\n"
                "I have expertise in Java, Python, C++, and JavaScript, and I stay up-to-date with the latest industry trends.\n\n"
                "I thrive in team environments, delivering high-quality software within tight deadlines. I prioritize user-centric design to create intuitive experiences.\n\n"
                "I actively seek out opportunities to expand my knowledge and skill set through online courses and engaging with the developer community.\n\n"
                "If you're looking for a passionate software engineer who can turn ideas into reality, I would love to connect with you.",
                style: TextStyle(
                  fontSize: 14.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                  icon: FaIcon(FontAwesomeIcons.twitter),
                  onPressed: () {                    
                    launch('https://twitter.com/IqraAbdifitax');
                  },
                ),
              ],
            ),
            SizedBox(height: 16.0),
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
