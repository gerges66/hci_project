// import 'package:flutter/material.dart';
//
// import '../../../../utils/app_assets.dart';
// import '../../../../utils/app_colors.dart';
// import '../../../../utils/app_styles.dart';
//
// class ProfileTab extends StatelessWidget {
//   const ProfileTab({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//      crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         Container(
//           width: double.infinity,
//           height: height*.2,
//           decoration: BoxDecoration(
//               color: AppColors.PrimaryColorForLight,
//             borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60))
//           ),
//           child: Row(
//             children: [
//               SizedBox(width: width*.03,),
//              Container(
//                width: width*.3,
//                height: height*.1,
//                decoration:BoxDecoration(
//                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),
//                  bottomLeft: Radius.circular(20),
//                  bottomRight: Radius.circular(20)),
//                    color: AppColors.whiteColor
//                ) ,
//                child:Image.asset(AppAssets.logoTop),
//              ),
//               SizedBox(width: width*.2,),
//               Column(
//                 children: [
//                   SizedBox(height: height*.05,),
//                   Text('Amir Magdy ',
//                     style: AppStyles.bold20White,),
//                   SizedBox(height: height*.02,),
//                   Text('Amir11@gmail.com',
//                     style: AppStyles.medium16White,)
//                 ],
//               ),
//             ],
//           ),
//         ),
//         SizedBox(height: height*.08,),
//         Text('Language',
//         style: AppStyles.medium16black,),
//         SizedBox(height: height*.03),
//         Container(
//           margin: EdgeInsets.all(10),
//           width: width*.76,
//           height: height*.06,
//           decoration: BoxDecoration(
//             border: Border.all(
//               width: 1,
//               color: AppColors.PrimaryColorForLight
//             ),
//             borderRadius: BorderRadius.circular(12)
//           ),
//           child: Row(
//             children: [
//               Text('English',
//              style: AppStyles.bold20Primary, ),
//               Spacer(),
//               Icon(Icons.arrow_drop_down,size: 40,
//                 color: AppColors.PrimaryColorForLight,)
//             ],
//           ),
//         ),
//         SizedBox(height: height*.08,),
//         Text('Theme',
//           style: AppStyles.medium16black,),
//         SizedBox(height: height*.03),
//         Container(
//           margin: EdgeInsets.all(10),
//           width: width*.76,
//           height: height*.06,
//           decoration: BoxDecoration(
//               border: Border.all(
//                   width: 1,
//                   color: AppColors.PrimaryColorForLight
//               ),
//               borderRadius: BorderRadius.circular(12)
//           ),
//           child: Row(
//             children: [
//               Text('Light',
//                 style: AppStyles.bold20Primary, ),
//               Spacer(),
//               Icon(Icons.arrow_drop_down,size: 40,
//                 color: AppColors.PrimaryColorForLight,)
//             ],
//           ),
//         ),
//         SizedBox(height: height*.2,),
//
//         Container(
//           padding: EdgeInsets.all(10),
//           margin: EdgeInsets.all(10),
//           width: width*.76,
//           height: height*.06,
//           decoration: BoxDecoration(
//               color:  Color(0xFFFF5659),
//               borderRadius: BorderRadius.circular(12)
//           ),
//           child: Row(
//             children: [
//               Text('Logout',
//                 style: AppStyles.bold20White, ),
//
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../../../utils/app_assets.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_styles.dart';
import '../../../../utils/theme_cubit.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  String selectedLanguage = 'English';
  String selectedTheme = 'Light';

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            height: height * .2,
            decoration: BoxDecoration(
              color: AppColors.PrimaryColorForLight,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(60),
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: width * .03),
                Container(
                  width: width * .3,
                  height: height * .1,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: AppColors.whiteColor,
                  ),
                  child: Image.asset(AppAssets.logoTop),
                ),
                SizedBox(width: width * .1),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Amir Magdy', style: AppStyles.bold20White),
                    const SizedBox(height: 8),
                    Text('Amir11@gmail.com', style: AppStyles.medium16White),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),

          // Language Selector
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('Language', style: AppStyles.medium16black),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: AppColors.PrimaryColorForLight,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: DropdownButton<String>(
              value: selectedLanguage,
              isExpanded: true,
              underline: SizedBox(),
              style: AppStyles.bold20Primary,
              icon: Icon(Icons.arrow_drop_down, color: AppColors.PrimaryColorForLight, size: 40),
              items: ['English', 'Arabic'].map((lang) {
                return DropdownMenuItem<String>(
                  value: lang,
                  child: Text(lang),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedLanguage = value!;
                  // TODO: Add logic to update app locale
                });
              },
            ),
          ),

          const SizedBox(height: 30),

          // Theme Selector
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('Theme', style: AppStyles.medium16black),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: AppColors.PrimaryColorForLight,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: DropdownButton<String>(
              value: selectedTheme,
              isExpanded: true,
              underline: SizedBox(),
              style: AppStyles.bold20Primary,
              icon: Icon(Icons.arrow_drop_down, color: AppColors.PrimaryColorForLight, size: 40),
              items: ['Light', 'Dark'].map((theme) {
                return DropdownMenuItem<String>(
                  value: theme,
                  child: Text(theme),
                );
              }).toList(),
              // onChanged: (value) {
              //   setState(() {
              //     selectedTheme = value!;
              //     // TODO: Add logic to switch theme using Provider/Cubit
              //   });
              // },
                onChanged: (value) {
                  setState(() {
                    selectedTheme = value!;
                  });
                  context.read<ThemeCubit>().setTheme(selectedTheme);
                }

            ),
          ),

          const SizedBox(height: 40*5),

          // Logout Button
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            width: width * .76,
            decoration: BoxDecoration(
              color: const Color(0xFFFF5659),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text('Logout', style: AppStyles.bold20White),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

