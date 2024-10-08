import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:habitize/screens/screen_4.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBody: true,
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: -94,
              child: SvgPicture.asset(
                'assets/images/blob.svg',
                width: w,
                // height: 500,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
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
                    Text(
                      'Unlock your full potential with our comprehensive daily planner and habit tracker, tailored for students and young adults striving for success.',
                      style: TextStyle(
                        color: Color(0xFF464646),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: SvgPicture.asset(
                        'assets/images/logo2.svg',
                        width: w,
                        // height: 500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff338BDC),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(90),
              ),
              minimumSize: const Size(90, 90),
              padding: EdgeInsets.zero,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const Screen4(),
                ),
              );
            },
            child: const Icon(
              Icons.arrow_forward,
              size: 45,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}
