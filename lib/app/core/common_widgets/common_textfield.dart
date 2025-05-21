import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview/app/core/common_widgets/sizes.dart';

import '../const_color.dart';



class CommonTextField extends StatelessWidget {
  const CommonTextField(
      {Key? key,
      this.controller,
      this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.contentPadding,
      this.validator,
      this.keyboardType,
      this.maxLines = 1,
      this.onChanged,
      this.onTap,
      this.isReadOnly = false,
      this.textInputAction = TextInputAction.next,
      this.fillColor,
      this.maxLength,
      this.textCapitalization = TextCapitalization.none,
      this.textInputFormatter,
      this.labelText,
      this.obscureText,
      this.fontSize,
      this.hintFontWeight,
      this.fontColor,
      this.isMandatory = true,
      this.borderColor,
      this.hintFontColor,
      this.borderWidth,
      this.focusNode,
      this.enabled = true,
      this.dividerEnabled = false,
      this.textFieldTextAlign,
      this.onEditingComplete,
      this.onTapOutside,
      this.onFieldSubmitted,
      this.autovalidate = false})
      : super(key: key);

  final TextEditingController? controller;

  final Function(String)? onChanged;
  final VoidCallback? onEditingComplete;
  final TapRegionCallback? onTapOutside;
  final String? hintText;

  final Widget? prefixIcon;

  final Widget? suffixIcon;

  final String? Function(String?)? validator;

  final EdgeInsetsGeometry? contentPadding;

  final Color? fontColor;
  final Color? hintFontColor;

  final int? maxLines;

  final bool isReadOnly;
  final bool enabled;
  final bool dividerEnabled;

  final TextInputAction? textInputAction;

  final TextInputType? keyboardType;

  final Color? fillColor;

  final int? maxLength;

  final TextCapitalization textCapitalization;

  final List<TextInputFormatter>? textInputFormatter;

  final String? labelText;

  final bool? obscureText;

  final bool isMandatory;

  final double? fontSize;

  final Color? borderColor;
  final ValueChanged<String>? onFieldSubmitted;
  final FontWeight? hintFontWeight;
  final TextAlign? textFieldTextAlign;

  final double? borderWidth;
  final FocusNode? focusNode;
  final Function()? onTap;
  final bool autovalidate;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: ConstColor.appPrimaryColor,
      onTap: onTap,
      style: TextStyle(
          fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
          color: ConstColor.borderColor,
          fontSize: Sizes.px14,
          fontWeight: FontWeight.w400),
      enabled: enabled,
      controller: controller,
      validator: validator,
      autofocus: false,
      maxLines: maxLines,
      onChanged: onChanged,
      readOnly: isReadOnly,
      maxLength: maxLength,
      focusNode: focusNode,
      textInputAction: textInputAction,
      keyboardType: keyboardType ?? TextInputType.multiline,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textCapitalization: textCapitalization,
      textAlign: textFieldTextAlign ?? TextAlign.start,
      inputFormatters: textInputFormatter,
      obscureText: obscureText ?? false,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
          contentPadding: contentPadding ?? const EdgeInsets.all(8),
          hintStyle: TextStyle(
            color: hintFontColor ?? ConstColor.hintTextColor,
            fontSize: fontSize ?? Sizes.px14,
            fontWeight: hintFontWeight ?? FontWeight.w400,
            fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
          ),
          errorMaxLines: 4,
          errorStyle: TextStyle(
            letterSpacing: 1.w,
            color: Colors.red,
            fontSize: fontSize ?? Sizes.px12,
            fontWeight: hintFontWeight ?? FontWeight.w400,
            fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
          ),
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: ConstColor.appPrimaryColor, width: 1.h),
              borderRadius: BorderRadius.circular(10.r)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ConstColor.borderColor, width: 1.h),
              borderRadius: BorderRadius.circular(10.r)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ConstColor.borderColor, width: 1.h),
              borderRadius: BorderRadius.circular(10.r)),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ConstColor.borderColor, width: 1.h),
              borderRadius: BorderRadius.circular(10.r)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ConstColor.borderColor, width: 1.h),
              borderRadius: BorderRadius.circular(10.r))),
      onSaved: (val) {},
      onEditingComplete: onEditingComplete,
      onTapOutside: onTapOutside,
    );
  }
}
