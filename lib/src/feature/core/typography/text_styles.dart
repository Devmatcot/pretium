import 'package:flutter/widgets.dart';

// import 'package:google_fonts/google_fonts.dart';

import '../theme/colors.dart';
import 'typography.dart';

/// App Text Style Definitions
class AppTextStyle {
  static const _baseTextStyle = TextStyle(
    color: AppColors.black,
    fontFamily: 'DMSans',
    // fontFamily: GoogleFonts.genos().fontFamily,
    fontWeight: AppFontWeight.regular,
  );

  /// Headline 1 Text Style
  static TextStyle get headline1 {
    return _baseTextStyle.copyWith(
      fontSize: 22,
      fontFamily: 'DMSans',
      // fontFamily: GoogleFonts.lato().fontFamily,
      fontWeight: AppFontWeight.medium,
    );
  }

  static TextStyle get headline1B {
    return _baseTextStyle.copyWith(
      fontSize: 24,
      fontFamily: 'DMSans',
      // fontFamily: GoogleFonts.lato().fontFamily,
      fontWeight: AppFontWeight.bold,
    );
  }

  /// Headline 2 Text Style
  static TextStyle get headline2 {
    return _baseTextStyle.copyWith(
      fontSize: 20,
      fontWeight: AppFontWeight.regular,
    );
  }

  /// Headline 3 Text Style
  static TextStyle get headline3 {
    return _baseTextStyle.copyWith(
      fontSize: 18,
      fontWeight: AppFontWeight.regular,
    );
  }

  //secondary button style
  static TextStyle get secondaryButtonStyle {
    return AppTextStyle.headline3.copyWith(
      // color: AppColors.primary,
      fontWeight: AppFontWeight.semiBold,
      fontSize: 15,
    );
  }

  //secondary primary style
  static TextStyle get pryBtnStyle {
    return AppTextStyle.headline3.copyWith(
      fontWeight: AppFontWeight.bold,
      fontSize: 18,
      color: AppColors.white,
    );
  }

  /// Headline 4 Text Style
  static TextStyle get headline4 {
    return _baseTextStyle.copyWith(
      fontSize: 16 + 3,
      fontWeight: AppFontWeight.bold,
    );
  }

  /// Headline 5 Text Style
  static TextStyle get headline5 {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: AppFontWeight.medium,
    );
  }

  static TextStyle get headline5B {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: AppFontWeight.bold,
    );
  }

  /// Headline 6 Text Style
  static TextStyle get headline6 {
    return _baseTextStyle.copyWith(
      fontSize: 12,
      fontWeight: AppFontWeight.bold,
    );
  }

  /// Subtitle 1 Text Style
  static TextStyle get subtitle1 {
    return _baseTextStyle.copyWith(
      fontSize: 15.5,
      //letterSpacing: 0.3,
      fontWeight: AppFontWeight.bold,
    );
  }

  /// Subtitle 2 Text Style
  static TextStyle get subtitle2 {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      color: AppColors.appDark,
      fontWeight: AppFontWeight.bold,
    );
  }

  static TextStyle get subtitle3 {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      //letterSpacing: 0.3,
      fontWeight: AppFontWeight.bold,
    );
  }

  static TextStyle get subtitleStyle {
    return _baseTextStyle.copyWith(
      fontSize: 15,
      color: AppColors.subTitleColor,
      // fontWeight: AppFontWeight.bold,
    );
  }

  /// Body Text 1 Text Style
  static TextStyle get bodyText1 {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: AppFontWeight.medium,
    );
  }

  /// Body Text 2 Text Style (the default)
  static TextStyle get bodyText2 {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: AppFontWeight.light,
    );
  }

  /// Body Text 2 Text Style (the default)
  static TextStyle get bodyText3 {
    return _baseTextStyle.copyWith(
      fontSize: 11,
      fontWeight: AppFontWeight.regular,
    );
  }

  static TextStyle get bodyText4 {
    return _baseTextStyle.copyWith(
      fontSize: 12,
      fontWeight: AppFontWeight.regular,
    );
  }

  static TextStyle get bodyText4M {
    return _baseTextStyle.copyWith(
      fontSize: 12,
      fontWeight: AppFontWeight.medium,
    );
  }

  static TextStyle get bodyText4B {
    return _baseTextStyle.copyWith(
      fontSize: 12,
      fontWeight: AppFontWeight.bold,
    );
  }

  static TextStyle get bodyText5 {
    return _baseTextStyle.copyWith(
      fontSize: 15,
      fontWeight: AppFontWeight.regular,
    );
  }

  static TextStyle get bodyText5M {
    return _baseTextStyle.copyWith(
      fontSize: 15,
      fontWeight: AppFontWeight.medium,
    );
  }

  /// Caption Text Style
  static TextStyle get caption {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: AppFontWeight.regular,
    );
  }

  static TextStyle get captionM {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: AppFontWeight.medium,
    );
  }

  /// Overline Text Style
  static TextStyle get overline {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: AppFontWeight.regular,
    );
  }

  /// Button Text Style
  static TextStyle get button {
    return _baseTextStyle.copyWith(
      fontSize: 14 + 3,
      color: AppColors.white,
      fontWeight: AppFontWeight.bold,
    );
  }

  /// Button Text Style
  static TextStyle get appBarTitle {
    return _baseTextStyle.copyWith(
      fontSize: 20,
      color: AppColors.appDark,
      fontWeight: AppFontWeight.medium,
    );
  }

  /// Button Text Style
  static TextStyle get caption2 {
    return _baseTextStyle.copyWith(
      fontSize: 12,
      color: AppColors.white,
      fontWeight: AppFontWeight.medium,
    );
  }

  static TextStyle get mediumTxt {
    return _baseTextStyle.copyWith(
      fontSize: 12,
      color: AppColors.appDark,
      fontWeight: AppFontWeight.medium,
    );
  }

  static TextStyle get formText {
    return _baseTextStyle.copyWith(
      fontSize: 12 + 3,
      color: AppColors.appGrey,
      fontWeight: AppFontWeight.regular,
    );
  }

  static TextStyle get formTextC {
    return _baseTextStyle.copyWith(
      fontSize: 12 + 3,
      color: AppColors.greyTextColor,
      fontWeight: AppFontWeight.regular,
    );
  }

  static TextStyle get formTextS {
    return _baseTextStyle.copyWith(
      fontSize: 12,
      color: AppColors.appGrey,
      fontWeight: AppFontWeight.regular,
    );
  }
}
