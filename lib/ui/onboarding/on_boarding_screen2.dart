//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../../utils/app_assets.dart';
// import '../../utils/app_colors.dart';
// import '../../utils/app_styles.dart';
// import '../home/home_screen.dart';
//
// class OnBoardingScreen2 extends StatefulWidget {
//   static const String routeName ='OnboardingScreen';
//   const OnBoardingScreen2({super.key});
//
//   @override
//   State<OnBoardingScreen2> createState() => _OnBoardingScreen2State();
// }
//
// class _OnBoardingScreen2State extends State<OnBoardingScreen2> {
//   final PageController _pageController = PageController();
//   int _currentIndex = 0;
//
//   final List<OnboardingItem> onboardingitems = [
//     OnboardingItem(image: AppAssets.onBoarding2,
//         text:  'Find Events That Inspire You',
//     text2: 'Dive into a world of events crafted to fit\n'
//         ' your unique interests. Whether your into live music, art workshops,\n'
//        ' professional networking, or simply discovering new experiences, we have\n '
//         'something for everyone. Our curated recommendations will help you explore, connect,\n'
//         ' and make the most of every opportunity around you.'),
//     OnboardingItem(image:  AppAssets.onBoarding3,
//         text:     'Effortless Event Planning ',
//       text2: 'Take the hassle out of organizing events with \n'
//         'our all-in-one planning tools. From setting up \n'
//         'invites and managing RSVPs to scheduling\n'
//         ' reminders and coordinating details, we’ve got \n'
//         ' you covered. Plan with ease and focus on what matters\n'
//         ' – creating an unforgettable experience for you and your guests.'),
//     OnboardingItem(image: AppAssets.onBoarding4,
//         text: 'Connect with Friends & Share\n Moments',
//     text2: 'Make every event memorable by sharing the\n'
//         ' experience with others. Our platform lets you\n'
//         ' invite friends, keep everyone in the loop, and\n'
//         ' celebrate moments together. Capture and\n'
//         ' share the excitement with your network, so\n'
//         ' you can relive the highlights and cherish the\n'
//         ' memories.'),
//
//   ];
//   void _nextPage() {
//     if (_currentIndex < onboardingitems.length - 1) {
//       _pageController.nextPage(
//         duration: Duration(milliseconds: 500),
//         curve: Curves.easeInOut,
//       );
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Image.asset(AppAssets.logoTop,
//             height: height*.2,
//           ),
//           Expanded(
//             child: PageView.builder(
//               controller: _pageController,
//               itemCount: onboardingitems.length,
//               onPageChanged: (index) {
//                 setState(() {
//                   _currentIndex = index;
//                 });
//               },
//               itemBuilder: (context, index) {
//                 return Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image.asset(onboardingitems[index].image,
//                       height: height*.35,
//                       width: width*.9,),
//                     SizedBox(height: height*.02),
//                     Text(
//                       onboardingitems[index].text,
//                       style: AppStyles.bold20Primary,
//                     ),
//                     Text(
//                       onboardingitems[index].text2,
//                       style: AppStyles.medium16black,
//
//                       ),
//
//                   ],
//                 );
//               },
//             ),
//           ),
//
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 _currentIndex > 0
//                     ? ElevatedButton(
//                   style:  ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.transparent)),
//                   onPressed: () {
//                     _pageController.previousPage(
//                       duration: Duration(milliseconds: 500),
//                       curve: Curves.easeInOut,
//                     );
//                   },
//                   child: Text("Back",style: TextStyle(color: AppColors.PrimaryColorForLight),),
//                 )
//                     : SizedBox(width: width*.4),
//
//                 Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: List.generate(
//                     onboardingitems.length,
//                         (index) => Container(
//                       margin: EdgeInsets.symmetric(horizontal: 5),
//                       width: _currentIndex == index ? 20 : 10,
//                       height: 10,
//                       decoration: BoxDecoration(
//                         color: _currentIndex == index ? AppColors.PrimaryColorForLight : Colors.grey,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                   ),
//                 ),
//                 ElevatedButton(
//                   style:  ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.transparent)),
//                   onPressed: _currentIndex == onboardingitems.length - 1
//                       ? () {
//                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()),
//                     );
//                   }
//                       : _nextPage,
//                   child: Text(_currentIndex == onboardingitems.length - 1 ? "Start" : "Next",
//                     style: TextStyle(color: AppColors.PrimaryColorForLight),),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// class OnboardingItem {
//   final String image;
//   final String text;
//   final String text2;
//   OnboardingItem({required this.image, required this.text, required this.text2});
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/auth/view/register_view.dart';
import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';
import '../home/home_screen.dart';

class OnBoardingScreen2 extends StatefulWidget {
  static const String routeName = 'OnboardingScreen';
  const OnBoardingScreen2({super.key});

  @override
  State<OnBoardingScreen2> createState() => _OnBoardingScreen2State();
}

class _OnBoardingScreen2State extends State<OnBoardingScreen2> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<OnboardingItem> onboardingitems = [
    OnboardingItem(
      image: AppAssets.onBoarding2,
      text: 'Find Events That Inspire You',
      text2: 'Dive into a world of events crafted to fit your unique interests. Whether you’re into live music, art workshops, professional networking, or simply discovering new experiences, we have something for everyone. Our curated recommendations will help you explore, connect, and make the most of every opportunity around you.',
    ),
    OnboardingItem(
      image: AppAssets.onBoarding3,
      text: 'Effortless Event Planning',
      text2: 'Take the hassle out of organizing events with our all-in-one planning tools. From setting up invites and managing RSVPs to scheduling reminders and coordinating details, we’ve got you covered. Plan with ease and focus on what matters – creating an unforgettable experience for you and your guests.',
    ),
    OnboardingItem(
      image: AppAssets.onBoarding4,
      text: 'Connect with Friends & Share Moments',
      text2: 'Make every event memorable by sharing the experience with others. Our platform lets you invite friends, keep everyone in the loop, and celebrate moments together. Capture and share the excitement with your network, so you can relive the highlights and cherish the memories.',
    ),
  ];

  void _nextPage() {
    if (_currentIndex < onboardingitems.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              AppAssets.logoTop,
              height: height * 0.2,
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: onboardingitems.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  final item = onboardingitems[index];
                  return SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: height * 0.03),
                        Image.asset(
                          item.image,
                          height: height * 0.3,
                          width: width * 0.9,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(height: 20),
                        Text(
                          item.text,
                          style: AppStyles.bold20Primary,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 12),
                        Text(
                          item.text2,
                          style: AppStyles.medium16black,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _currentIndex > 0
                      ? ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                      elevation: MaterialStatePropertyAll(0),
                    ),
                    onPressed: () {
                      _pageController.previousPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Text(
                      "Back",
                      style: TextStyle(color: AppColors.PrimaryColorForLight),
                    ),
                  )
                      : SizedBox(width: width * 0.2),
                  Row(
                    children: List.generate(
                      onboardingitems.length,
                          (index) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        width: _currentIndex == index ? 20 : 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: _currentIndex == index
                              ? AppColors.PrimaryColorForLight
                              : Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                      elevation: MaterialStatePropertyAll(0),
                    ),
                    onPressed: _currentIndex == onboardingitems.length - 1
                        ? () {
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => HomeScreen()),
                      // );
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterView()),
                      );
                    }
                        : _nextPage,
                    child: Text(
                      _currentIndex == onboardingitems.length - 1 ? "Start" : "Next",
                      style: TextStyle(color: AppColors.PrimaryColorForLight),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingItem {
  final String image;
  final String text;
  final String text2;

  OnboardingItem({
    required this.image,
    required this.text,
    required this.text2,
  });
}
