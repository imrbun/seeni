import 'package:flutter/material.dart';
import 'package:seeni/constants.dart';
import 'package:seeni/screens/initial_choices/components/choices_section.dart';
import 'package:seeni/size_config.dart';

class ChoicesContent extends StatefulWidget {
  @override
  _ChoicesContentState createState() => _ChoicesContentState();
}

class _ChoicesContentState extends State<ChoicesContent> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {"text": "Category 1", "image": "images/logo.png"},
    {"text": "Category 2", "image": "images/logo-splash.png"},
    {"text": "Category 3", "image": "images/logo.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: getProportionateScreenHeight(40)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                   
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => ChoicesSection(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
