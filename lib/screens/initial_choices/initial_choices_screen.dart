import 'package:flutter/material.dart';
import 'package:seeni/screens/initial_choices/components/choices_content.dart';
import 'package:seeni/size_config.dart';

class InitialChoiceScreen extends StatelessWidget {
  static String routeName = "/initial_choices";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InitialChoicesBody(),
      
    );
  }
}

class InitialChoicesBody extends StatefulWidget {
  @override
  _InitialChoicesBodyState createState() => _InitialChoicesBodyState();
}

class _InitialChoicesBodyState extends State<InitialChoicesBody> {
  final double infoHeight = 364.0;

    @override
  Widget build(BuildContext context) {
     final double tempHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).size.width / 1.2) +
        24.0;
  return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            Container(
      decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [Color.fromARGB(255,189,4,147), Color.fromARGB(255, 255,30,116), Color.fromARGB(255,249,170,32)],
              ),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: getProportionateScreenHeight(40)),
                Center(
                  child: Image.asset('images/logo-white.png'),
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                const Center(
                  child: Text(
                    'Sila pilih kategori berikut berdasarkan minat anda',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ) 
              ],
            ),
            ),
            Positioned(
              top: (MediaQuery.of(context).size.width / 1.2) - 100.0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32.0),
                      topRight: Radius.circular(32.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: SingleChildScrollView(
                    child: Container(
           constraints: BoxConstraints(
                          minHeight: infoHeight,
                          maxHeight: tempHeight > infoHeight
                              ? tempHeight
                              : infoHeight),
                      child: ChoicesContent()
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}