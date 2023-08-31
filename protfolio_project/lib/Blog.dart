import 'package:flutter/material.dart';
import 'package:protfolio_project/constants.dart';
import 'package:protfolio_project/Homepage.dart';
import 'package:protfolio_project/Aboutme.dart';
import 'package:protfolio_project/ContacUs.dart';
import 'package:protfolio_project/Services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Blog extends StatelessWidget {
  const Blog({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.0),
                  Text(
                    "The Blog",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: BlogPost(
                            title: "Next.js vs. React",
                            date: "July 1, 2023",
                            content:
                                " React is a JavaScript library focused on building UI components, while Next.js is a framework that enhances React by adding features like server-side rendering, routing, and other optimizations. Next.js is an excellent choice for building server-rendered React applications, static websites, or applications that require advanced features like automatic code splitting and prefetching. However, if you only need a lightweight library for building UI components, React can be used standalone without Next.js.",
                            image: "assets/images/blog1.jpg",
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: BlogPost(
                            title: "Advantages of AI",
                            date: "July 2, 2023",
                            content:
                                "Artificial intelligence (AI) provides numerous advantages, including automation and increased efficiency, data-driven decision making, personalized experiences, improved customer service, enhanced healthcare, predictive analytics, improved safety and security, and increased efficiency in manufacturing and logistics. AI optimizes manufacturing processes and supply chain management, leading to increased efficiency. Overall, AI has the potential to transform industries and revolutionize various aspects of our lives.",
                            image: "assets/images/blog2.jpg",
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: BlogPost(
                            title: "Kotlin vs. Java",
                            date: "July 3, 2023",
                            content:
                                "Kotlin and Java are both popular programming languages used for developing applications on the Java Virtual Machine (JVM). While they have similarities, there are notable differences between them. Here's a comparison of Kotlin and Java , Kotlin offers a more concise syntax, null safety, coroutines, and extension functions, making it a more modern and expressive language compared to Java. However, Java has a larger community, extensive library support, and a longer history. Both languages are powerful and have their own strengths .",
                            image: "assets/images/blog3.jpg",
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: BlogPost(
                            title: "Is Open Source Open to Women?",
                            date: "July 4, 2023",
                            content:
                                "he fact that women are underrepresented in tech is nothing new. However, while we’ve seen the gender diversity reports from companies like Google, Facebook, and many more, a look at the number of women in the open source community suggests that the numbers might be worse than these reports imply. In this post, Toptal COO Breanden Beneschott shares the results of a study looking at gender on GitHub and considers a few reasons why GitHub is so male-dominated, including a few ideas on how we can make the open source community a more welcoming place.",
                            image: "assets/images/blog4.jpg",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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

class BlogPost extends StatefulWidget {
  final String title;
  final String date;
  final String content;
  final String image;

  const BlogPost({
    Key? key,
    required this.title,
    required this.date,
    required this.content,
    required this.image,
  }) : super(key: key);

  @override
  _BlogPostState createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {
  bool showFullContent = false;

  @override
  Widget build(BuildContext context) {
    String displayContent =
        showFullContent ? widget.content : widget.content.substring(0, 200);

    return Container(
      margin: EdgeInsets.only(bottom: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              widget.image,
              width: 300.0,
              height: 150.0,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            widget.date,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12.0,
            ),
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              displayContent,
              style: TextStyle(
                fontSize: 14.0,
              ),
              maxLines: 2, // Limit the content text to 2 lines
              overflow: TextOverflow
                  .ellipsis, // Show ellipsis (...) when content overflows
            ),
          ),
          if (showFullContent &&
              widget.content.length >
                  200) // Check if content length is greater than 200
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                widget.content.substring(200),
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showFullContent = !showFullContent;
                  });
                },
                child: Text(
                  showFullContent ? 'Show Less' : 'Read More',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
