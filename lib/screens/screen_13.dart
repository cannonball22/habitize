import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Screen13 extends StatelessWidget {
  const Screen13({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: Stack(
        children: [
          Positioned(
            right: -24,
            bottom: 0,
            child: Image.asset(
              "assets/images/leaves_2.png",
              // fit: BoxFit.cover
            ),
          ),
          Positioned(
            top: 0,
            left: -94,
            child: SvgPicture.asset(
              'assets/images/blob.svg',
              width: w,
              // height: 500,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 140,
                ),
                Center(
                  child: Text(
                    'Hello Charlie!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF464646),
                      fontSize: 42,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
