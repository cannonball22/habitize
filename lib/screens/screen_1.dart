import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Map out',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF2A9D8E),
                  fontSize: 64,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: SvgPicture.asset(
                  'assets/images/logo.svg',
                  width: w,
                  // height: 500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
