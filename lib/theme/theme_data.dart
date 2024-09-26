import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_boilerplate/shared/shared.dart';

class ThemeConfig {
  static ThemeData createTheme({
    required Brightness brightness,
    required Color background,
    required Color primaryText,
    Color? secondaryText,
    required Color accentColor,
    Color? divider,
    Color? buttonBackground,
    required Color buttonText,
    Color? cardBackground,
    Color? disabled,
    required Color error,
  }) {
    final baseTextTheme = brightness == Brightness.dark
        ? Typography.material2021().black 

        : Typography.material2021().white;

    return ThemeData(
      brightness: brightness,
      scaffoldBackgroundColor: background, // Use this for the main background
      cardColor: background,
      dividerColor: divider,
      dividerTheme: DividerThemeData(
        color: divider,
        space: 1,
        thickness: 1,
      ),
      cardTheme: CardTheme(
        color: cardBackground,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAliasWithSaveLayer, 

      ),
      primaryColor: accentColor, 

      textSelectionTheme: TextSelectionThemeData(
        selectionColor: accentColor,
        selectionHandleColor: accentColor,
        cursorColor: accentColor,
      ),
      appBarTheme: AppBarTheme( 

        backgroundColor: cardBackground,
        foregroundColor: secondaryText, // For icons and text
        toolbarTextStyle: baseTextTheme.bodyMedium!.copyWith(
          color: secondaryText,
          fontSize: 18,
        ),
        titleTextStyle: baseTextTheme.titleLarge!.copyWith(
          color: secondaryText,
          fontSize: 18,
        ),
        iconTheme: IconThemeData(
          color: secondaryText,
        ),
      ),
      iconTheme: IconThemeData(
        color: secondaryText,
        size: 16.0, 

      ),
      buttonTheme: ButtonThemeData(
        textTheme: ButtonTextTheme.primary,
        colorScheme: ColorScheme(
          brightness: brightness,
          primary: accentColor, 

          onPrimary: buttonText,
          secondary: accentColor,
          onSecondary: buttonText,
          surface: background,
          onSurface: buttonText,
          background: background,
          onBackground: buttonText,
          error: error,
          onError: buttonText,
        ),
        padding: const EdgeInsets.all(16.0),
      ),
      cupertinoOverrideTheme: CupertinoThemeData(
        brightness: brightness,
        primaryColor: accentColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        errorStyle: TextStyle(color: error),
        labelStyle: TextStyle( 

          fontFamily: 'Rubik',
          fontWeight: FontWeight.w600,
          fontSize: 16.0,
          color: primaryText.withOpacity(0.5),
        ),
        hintStyle: TextStyle(
          color: secondaryText,
          fontSize: 13.0,
          fontWeight: FontWeight.w300,
        ),
      ),
      fontFamily: 'Rubik',
      unselectedWidgetColor: hexToColor('#DADCDD'),
      textTheme: 
 TextTheme(
        displayLarge: baseTextTheme.displayLarge!.copyWith(
          color: primaryText,
          fontSize: 34.0,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: baseTextTheme.displayMedium!.copyWith(
          color: primaryText,
          fontSize: 22,
          fontWeight: FontWeight.bold, 

        ),
        headlineLarge: baseTextTheme.headlineLarge!.copyWith(
          color: secondaryText,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: baseTextTheme.headlineMedium!.copyWith(
          color: primaryText,
          fontSize: 18,
          fontWeight: FontWeight.w600, 

        ),
        titleLarge: baseTextTheme.titleLarge!.copyWith(
          color: primaryText,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        titleMedium: baseTextTheme.titleMedium!.copyWith(
          color: primaryText,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: baseTextTheme.bodyLarge!.copyWith(
          color: secondaryText,
          fontSize: 15,
        ),
        bodyMedium: baseTextTheme.bodyMedium!.copyWith(
          color: primaryText,
          fontSize: 
 12,
          fontWeight: FontWeight.w400,
        ),
        labelLarge: baseTextTheme.labelLarge!.copyWith(
          color: primaryText,
          fontSize: 12.0,
          fontWeight: FontWeight.w700,
        ),
        bodySmall: baseTextTheme.bodySmall!.copyWith( 

          color: primaryText,
          fontSize: 11.0,
          fontWeight: FontWeight.w300,
        ),
        labelSmall: baseTextTheme.labelSmall!.copyWith(
          color: secondaryText,
          fontSize: 11.0,
          fontWeight: FontWeight.w500, 

        ),
      ),
      colorScheme: ColorScheme.fromSwatch(
        brightness: brightness,
        primarySwatch: MaterialColor(accentColor.value, <int, Color>{
          50: accentColor.withOpacity(0.1),
          100: accentColor.withOpacity(0.2),
          200: accentColor.withOpacity(0.3),
          300: accentColor.withOpacity(0.4), 

          400: accentColor.withOpacity(0.5),
          500: accentColor.withOpacity(0.6),
          600: accentColor.withOpacity(0.7),
          700: accentColor.withOpacity(0.8),
          800: accentColor.withOpacity(0.9),
          900: accentColor.withOpacity(1.0), 

        }),
        accentColor: accentColor,
        backgroundColor: background,
        errorColor: error,
      ).copyWith(
        secondary: accentColor,
        onPrimary: buttonText,
        onSecondary: buttonText,
        onSurface: buttonText,
        onBackground: buttonText,
        onError: buttonText,
      ),
    );
  }

  static ThemeData get lightTheme => createTheme(
        brightness: Brightness.light,
        background: ColorConstants.lightScaffoldBackgroundColor,
        cardBackground: ColorConstants.secondaryAppColor,
        primaryText: Colors.black,
        secondaryText: Colors.white,
        accentColor: ColorConstants.secondaryAppColor,
        divider: ColorConstants.secondaryAppColor,
        buttonBackground: Colors.black38,
        buttonText: ColorConstants.secondaryAppColor,
        disabled: ColorConstants.secondaryAppColor,
        error: Colors.red,
      );

  static ThemeData get darkTheme => createTheme(
        brightness: Brightness.dark,
        background: ColorConstants.darkScaffoldBackgroundColor,
        cardBackground: ColorConstants.secondaryDarkAppColor,
        primaryText: Colors.white,
        secondaryText: Colors.black,
        accentColor: ColorConstants.secondaryDarkAppColor,
        divider: Colors.black45,
        buttonBackground: Colors.white,
        buttonText: ColorConstants.secondaryDarkAppColor,
        disabled: ColorConstants.secondaryDarkAppColor,
        error: Colors.red,
      );
}
