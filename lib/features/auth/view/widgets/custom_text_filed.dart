// import 'package:flutter/material.dart';
//
// import '../../../../constant/colors.dart';
//
// class CustomTextFormFiled extends StatelessWidget {
//   const CustomTextFormFiled({
//     super.key,
//     required this.hintText,
//     this.controller,
//     this.validator,
//     this.onSaved,
//     this.isEmail = false,
//     this.isSecure,
//     this.suffixIcon, this.prefixIcon,
//   });
//   final String hintText;
//   final String? Function(String?)? validator;
//   final TextEditingController? controller;
//   final String? Function(String?)? onSaved;
//   final bool isEmail;
//   final bool? isSecure;
//   final IconButton? suffixIcon;
//   final IconButton? prefixIcon;
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       onSaved: onSaved,
//
//       controller: controller,
//       validator:
//           validator ??
//           (value) {
//             // write validation here
//             if (value == null || value.isEmpty) {
//               return "Field is required";
//             }
//             if (value.length < 6) {
//               return "$hintText must be at least 6 characters";
//             }
//             if (value.length > 20) {
//               return "$hintText must be less than 20 characters";
//             }
//             if (!RegExp(
//               r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
//             ).hasMatch(value)) {
//               return "$hintText must contain at least one uppercase letter, one lowercase letter, one number, and one special character";
//             }
//             if (isEmail &&
//                 !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
//               return "Invalid email address";
//             }
//
//             return null;
//           },
//       obscureText: isSecure ?? false,
//       decoration: InputDecoration(
//         hintText: hintText,
//         suffixIcon: suffixIcon,
//         prefixIcon: prefixIcon,
//         hintStyle: TextStyle(
//           color: formFiledColor,
//           fontSize: 16,
//           fontWeight: FontWeight.w400,
//         ),
//
//         border: OutlineInputBorder(
//           borderSide: BorderSide(color: formFiledColor, width: 2.0),
//           borderRadius: BorderRadius.circular(12),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: formFiledColor, width: 2.0),
//           borderRadius: BorderRadius.circular(12),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: formFiledColor, width: 2.0),
//           borderRadius: BorderRadius.circular(12),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../../../../constant/colors.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({
    super.key,
    required this.hintText,
    this.controller,
    this.validator,
    this.onSaved,
    this.isEmail = false,
    this.isSecure,
    this.suffixIcon,
    this.prefixIcon,
  });

  final String hintText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final String? Function(String?)? onSaved;
  final bool isEmail;
  final bool? isSecure;
  final IconButton? suffixIcon;
  final IconButton? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      controller: controller,
      validator: validator ??
              (value) {
            if (value == null || value.isEmpty) {
              return "Field is required";
            }
            if (value.length < 6) {
              return "$hintText must be at least 6 characters";
            }
            if (isEmail &&
                !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                    .hasMatch(value)) {
              return "Invalid email address";
            }
            return null;
          },
      obscureText: isSecure ?? false,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintStyle: TextStyle(
          color: formFiledColor,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: formFiledColor, width: 2.0),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: formFiledColor, width: 2.0),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: formFiledColor, width: 2.0),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
