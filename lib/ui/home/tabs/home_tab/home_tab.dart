// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../../../../utils/app_assets.dart';
// import '../../../../utils/app_colors.dart';
// import '../../../../utils/app_styles.dart';
//
// class HomeTab extends StatelessWidget {
//   final List<String> images = [
//     AppAssets.Meeting,
//     AppAssets.birthDay,
//     AppAssets.holiday,
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;
//
//     return Column(
//       children: [
//         Container(
//           padding: EdgeInsets.all(10),
//           width: double.infinity,
//           height: height * .2,
//           decoration: BoxDecoration(
//             color: AppColors.PrimaryColorForLight,
//             borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(30),
//               bottomRight: Radius.circular(30),
//             ),
//           ),
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(height: height * .008),
//                       Text('Welcome back ', style: AppStyles.medium16White),
//                       SizedBox(height: height * .01),
//                       Text('Amir magdy ', style: AppStyles.bold20White),
//                       SizedBox(height: height * .01),
//                       Row(
//                         children: [
//                           Image.asset(AppAssets.mapTab),
//                           SizedBox(width: 5),
//                           Text('Cairo , Egypt', style: AppStyles.medium16White),
//                         ],
//                       ),
//                     ],
//                   ),
//                   Spacer(),
//                   Image.asset(
//                     AppAssets.En,
//                     width: width * .2,
//                     height: height * .1,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         SizedBox(height: height * .02),
//         // Expanded ListView.builder
//         SizedBox(
//           height: height * .7,
//           child: ListView.builder(
//             padding: EdgeInsets.symmetric(horizontal: 16),
//             itemCount: images.length,
//             itemBuilder: (context, index) {
//               return Padding(
//                 padding: EdgeInsets.only(bottom: height * 0.02),
//                 child: Image.asset(images[index]),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
// home_tab.dart
import 'package:flutter/material.dart';

import '../../../../utils/app_assets.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_styles.dart';

class HomeTab extends StatelessWidget {
  final List<String> images = [
    AppAssets.Meeting,
    AppAssets.birthDay,
    AppAssets.holiday,
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          height: height * .2,
          decoration: BoxDecoration(
            color: AppColors.PrimaryColorForLight,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * .008),
                  Text('Welcome back', style: AppStyles.medium16White),
                  SizedBox(height: height * .01),
                  Text('Amir Magdy', style: AppStyles.bold20White),
                  SizedBox(height: height * .01),
                  Row(
                    children: [
                      Image.asset(AppAssets.mapTab, width: 24, height: 24),
                      const SizedBox(width: 5),
                      Text('Cairo, Egypt', style: AppStyles.medium16White),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Image.asset(
                AppAssets.En,
                width: width * .2,
                height: height * .1,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: height * 0.02),
                child: Image.asset(images[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}

