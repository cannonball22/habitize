import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:habitize/screens/screen_7.dart';

class Screen6 extends StatelessWidget {
  const Screen6({super.key});

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
            right: 0,
            bottom: 0,
            child: Image.asset(
              "assets/images/leaves_1.png",
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
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  height: 140,
                ),
                const Center(
                  child: Text(
                    'Please choose your gender',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF464646),
                      fontSize: 42,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 120,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        height: 250,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF2A9D8E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45),
                          ),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage("assets/images/male.png"),
                            ),
                            Text(
                              'Male',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Container(
                        height: 250,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF2A9D8E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45),
                          ),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage("assets/images/female.png"),
                            ),
                            Text(
                              'Female',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
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
                  builder: (BuildContext context) => const Screen7(),
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
