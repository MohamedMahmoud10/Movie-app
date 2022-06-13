import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_design/modules/constans.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              top: -100,
              left: -100,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kGreenColor.withOpacity(0.5),
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
              top:screenWidth*0.4,
              right: -88,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kPinkColor.withOpacity(0.5),
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
            Positioned(
              bottom:-100,
              left: -100,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kGreenColor.withOpacity(0.5),
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
            SafeArea(bottom: false,child: ListView(primary: true,children: const [
              SizedBox(
                height: 24,),
                 Text('What would you \n like to watch?',style: TextStyle(
                 fontSize: 24,fontWeight: FontWeight.w700,color: Constants.kWhiteColor
             ),
             textAlign: TextAlign.center,),

            ],

            ))
          ],
        ),
      ),
    );
  }
}
