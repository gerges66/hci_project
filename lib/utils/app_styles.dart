import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppStyles{
  static TextStyle bold20Primary = GoogleFonts.inter(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: AppColors.PrimaryColorForLight
  );
  static TextStyle bold20White = GoogleFonts.inter(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: AppColors.whiteColor
  );
  static TextStyle bold20Black = GoogleFonts.inter(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: AppColors.blackColor
  );
  static TextStyle medium16black = GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: AppColors.blackColor
  );
  static TextStyle medium16White = GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: AppColors.whiteColor
  );
}