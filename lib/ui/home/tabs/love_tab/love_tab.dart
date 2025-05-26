
import 'package:flutter/material.dart' ;

import '../../../../utils/app_assets.dart';

class LoveTab extends StatelessWidget {
  const LoveTab({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: height * .1,),
          Container(
            child: Image.asset(AppAssets.search),
          ),
          SizedBox(height: height * .02,),
          Container(
            child: Image.asset(AppAssets.birthDay),
          )
        ],
      ),
    );
  }
}
