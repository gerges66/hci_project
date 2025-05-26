
import 'package:flutter/material.dart';

import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';
import 'on_boarding_screen2.dart';

class OnBoardingScreen extends StatefulWidget {
  static const String routeName = 'On_boarding_Screen';

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int selectedLang = 0;

  int selectedTheme = 0;

  @override
  Widget build(BuildContext context) {
   var height = MediaQuery.of(context).size.height;
   var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: height*.03,),
            Image.asset(AppAssets.logoTop),
            SizedBox(height: height*.02,),
            Image.asset(AppAssets.onBoarding1,
              height: height*.35,),
            Text('Personalize Your Experience',
              style: AppStyles.bold20Primary,),
            SizedBox(height: height*.02,),
            Text('Choose your preferred theme and language'
                ' to get started with a comfortable,'
                ' tailored experience that suits your style.',
              style: AppStyles.medium16black,),
            SizedBox(height: height*.2,),
            SizedBox(

              height: height*.07,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.PrimaryColorForLight,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const OnBoardingScreen2()
                      ));
                },
                child: const Text(
                  "Let's Start",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
