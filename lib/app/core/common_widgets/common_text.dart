
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview/app/core/const_color.dart';




class CommonText extends Text {
  CommonText(
      {super.key,
        required String text,
        Color? fontColor,
        double? fontSize,
        int? maxLine,
        TextOverflow? overflow,
        TextAlign? textAlign,
        TextDecoration? textDecoration,
        FontWeight? fontWeight,
        String? fontFamily,
        FontStyle? fontstyle,
        double? letterSpacing,
        double? height})
      : super(text,
      softWrap: true,
      overflow: overflow,
      maxLines: maxLine,
      style: TextStyle(
          fontStyle: fontstyle ?? FontStyle.normal,
          letterSpacing: letterSpacing ?? 0,
          decoration: textDecoration ?? TextDecoration.none,
          fontSize: fontSize ?? 14.sp,
          color: fontColor ?? ConstColor.hintTextColor,
          fontWeight: fontWeight ?? FontWeight.w400,
          height: height ?? 0.00,
          fontFamily: fontFamily ?? GoogleFonts.plusJakartaSans().fontFamily),
      textAlign: textAlign);
}
