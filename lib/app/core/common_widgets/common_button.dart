import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview/app/core/const_color.dart';

import 'common_text.dart';

class CommonTextButton extends TextButton {
  final String text;
  final double? radius;
  final Color? borderColor;
  final Color? bgColor;
  final Color textColor;
  final FontWeight fontWeight;
  final EdgeInsetsGeometry? padding;
  final double? fontSize;

  CommonTextButton(
      {super.key,
      required this.text,
      required super.onPressed,
      this.radius,
      this.borderColor,
      this.textColor = ConstColor.borderColor,
      this.fontWeight = FontWeight.w500,
      this.bgColor,
      this.fontSize,
      this.padding})
      : super(
          child: Padding(
            padding: padding ?? EdgeInsets.symmetric(horizontal: 10.w),
            child: CommonText(
              text: text,
              fontColor: textColor,
              fontWeight: fontWeight,
              fontSize: fontSize,
              textAlign: TextAlign.center,
              fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
            ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: bgColor,
            alignment: Alignment.center,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius ?? 10.r),
            ),
          ),
        );
}
