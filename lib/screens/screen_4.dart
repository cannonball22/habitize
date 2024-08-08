import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:habitize/screens/screen_5.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

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
                      'At what times do you generally start and end your day?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF464646),
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    LayoutBuilder(builder: (context, constraints) {
                      print(constraints);
                      double imageWidth = 335;
                      double imageHeight = 360;
                      double containerWidth = constraints.maxWidth;
                      double containerHeight = constraints.maxWidth * 0.93;

                      // Calculate scaling factors
                      double widthFactor = containerWidth / imageWidth;
                      double heightFactor = containerHeight / imageHeight;

                      // Adjust positions based on scaling factors
                      double topPosition = 0 * heightFactor;
                      double rightPositionMorning = 103 * widthFactor;
                      double leftPositionMorning = 103 * widthFactor;
                      double bottomPositionNight = 180 * heightFactor;
                      double leftPositionNight = 46 * widthFactor;
                      double rightPositionNight = 146 * widthFactor;
                      double bottomPositionMessage = 24 * heightFactor;
                      double messageWidth = 280 * widthFactor;
                      return Stack(
                        children: [
                          SvgPicture.asset("assets/images/step_1.svg"),
                          Positioned(
                            top: topPosition,
                            right: rightPositionMorning,
                            left: leftPositionMorning,
                            child: const Text(
                              'Good Morning',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF464646),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: bottomPositionNight,
                            left: leftPositionNight,
                            right: rightPositionNight,
                            child: Text(
                              'Good Night',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF464646),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: bottomPositionMessage,
                            child: SizedBox(
                              width: messageWidth,
                              child: const Text(
                                'Always aim for 7-8 hours of sleep each night to stay healthy!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF717171),
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    }),
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
                  builder: (BuildContext context) => const Screen5(),
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
