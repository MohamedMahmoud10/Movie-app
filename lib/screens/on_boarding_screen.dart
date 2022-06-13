import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_design/modules/constans.dart';
import 'package:ui_design/modules/custom_outline_border.dart';
import 'package:dots_indicator/dots_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final scrennHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Constants.kBlackColor,
      extendBody: true,
      body: SizedBox(
        height: scrennHeight,
        width: screenWidth,
        child: Stack(
          children: [
            Positioned(
              top: scrennHeight * 0.1,
              left: -88,
              child: Container(
                height: 166,
                width: 166,
                decoration:  BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kPinkColor,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: Container(
                    width: 166,
                    height: 166,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            Positioned(
              top: scrennHeight * 0.3,
              right: -100,
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kGreenColor,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: scrennHeight * 0.07,
                  ),
                  CustomOutline(
                    height: screenWidth * 0.8,
                    padding: const EdgeInsets.all(4),
                    width: screenWidth * 0.8,
                    strokeWidth: 4,
                    radius: screenWidth * 0.8,
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          const Color(0xFFFE53BB),
                          const Color(0xFFFE53BB).withOpacity(0),
                          const Color(0xFF09FBD3),
                          const Color(0xFF09FBD3).withOpacity(0.1)
                        ],
                        stops: const [
                          0.2,
                          0.4,
                          0.6,
                          1
                        ]),
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              alignment: Alignment.bottomLeft,
                              image: AssetImage(
                                  'assets/photos/8e146e9e-d610-4fdd-ba0c-3388211bbdda.png'))),
                    ),
                  ),
                  SizedBox(
                    height: scrennHeight * 0.09,
                  ),
                  Text(
                    'Watch movies in \n Virtual Reality',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Constants.kWhiteColor.withOpacity(0.90),
                      fontSize: scrennHeight <= 667 ? 18 : 34,
                      fontWeight:FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    height: scrennHeight * 0.05,
                  ),
                  Text(
                    'Download and watch offline \n wherever you are',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Constants.kWhiteColor,
                      fontSize: scrennHeight <= 667 ? 12 : 16,
                    ),
                  ),
                  SizedBox(
                    height: scrennHeight * 0.03,
                  ),
                  CustomOutline(
                    strokeWidth: 3,
                    radius: 20,
                    padding: const EdgeInsets.all(3),
                    width: 160,
                    height: 38,
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Constants.kPinkColor, Constants.kGreenColor],
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Constants.kPinkColor.withOpacity(0.5),
                            Constants.kGreenColor.withOpacity(0.5)
                          ],
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 14,
                            color: Constants.kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                          (index) {
                        return Container(
                          height: 7,
                          width: 7,
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: index == 0
                                ? Constants.kGreenColor
                                : Constants.kBlackColor,
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: scrennHeight * 0.01,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
