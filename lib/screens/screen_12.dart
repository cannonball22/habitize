//t2 Core Packages Imports
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:habitize/screens/screen_13.dart';

//t2 Dependencies Imports
//t3 Services
//t3 Models
//t1 Exports

class Screen12 extends StatefulWidget {
  //SECTION - Widget Arguments
  //!SECTION
  //
  const Screen12({
    super.key,
  });

  @override
  State<Screen12> createState() => _Screen12State();
}

class _Screen12State extends State<Screen12> {
  //
  //SECTION - State Variables
  //t2 --Controllers
  List<bool> isSelected = [false, false, false];

  //t2 --Controllers
  //
  //t2 --State
  //t2 --State
  //
  //t2 --Constants
  //t2 --Constants
  //!SECTION

  @override
  void initState() {
    super.initState();
    //
    //SECTION - State Variables initializations & Listeners
    //t2 --Controllers & Listeners
    //t2 --Controllers & Listeners
    //
    //t2 --State
    //t2 --State
    //
    //t2 --Late & Async Initializers
    //t2 --Late & Async Initializers
    //!SECTION
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //
    //SECTION - State Variables initializations & Listeners
    //t2 --State
    //t2 --State
    //!SECTION
  }

  //SECTION - Stateless functions
  //!SECTION

  //SECTION - Action Callbacks
  //!SECTION

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 140,
                ),
                const Center(
                  child: Text(
                    'What’s your routine level?',
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
                  height: 40,
                ),
                const Text(
                  'Basic',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isSelected[0] = !isSelected[0];

                        isSelected[1] = false;
                        isSelected[2] = false;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isSelected[0]
                          ? const Color(0xff154F47)
                          : const Color(0xFF2A9D8E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(16),
                    ),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'First time: Wake Up, Meals and Bed Time',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Intermediate',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isSelected[1] = !isSelected[1];

                        isSelected[0] = false;
                        isSelected[2] = false;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isSelected[1]
                          ? const Color(0xff154F47)
                          : const Color(0xFF2A9D8E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(16),
                    ),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Morning Ritual, Work/Study Blocks, Exercise, Evening Wind-Down!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Advanced',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isSelected[2] = !isSelected[2];

                        isSelected[0] = false;
                        isSelected[1] = false;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isSelected[2]
                          ? const Color(0xff154F47)
                          : const Color(0xFF2A9D8E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(16),
                    ),
                    child: const Text(
                      'Personal Development, Productivity Techniques, Habit Tracking, Mindfulness Practices, Review & Reflect',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
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
                  builder: (BuildContext context) => const Screen13(),
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

  @override
  void dispose() {
    //SECTION - Disposable variables
    //!SECTION
    super.dispose();
  }
}
