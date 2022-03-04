import 'package:flutter/material.dart';

Map<int, Color> colorCodes = {
  50: const Color.fromRGBO(147, 205, 72, .1),
  100: const Color.fromRGBO(147, 205, 72, .2),
  200: const Color.fromRGBO(147, 205, 72, .3),
  300: const Color.fromRGBO(147, 205, 72, .4),
  400: const Color.fromRGBO(147, 205, 72, .5),
  500: const Color.fromRGBO(147, 205, 72, .6),
  600: const Color.fromRGBO(147, 205, 72, .7),
  700: const Color.fromRGBO(147, 205, 72, .8),
  800: const Color.fromRGBO(147, 205, 72, .9),
  900: const Color.fromRGBO(147, 205, 72, 1),
};

class AppColors {

  // FlightXPlan

  static const xBackgroundColor = Color.fromRGBO(236, 240, 243, 1);
  static const xWhiteColor = Color.fromRGBO(249, 249, 249, 1);
  static const xFontText = Color.fromRGBO(25, 53, 102, 1);
  static const xFont2Text = Color.fromRGBO(0, 113, 104, 1);
  static const xSubheadingTextColor = Color.fromRGBO(0, 0, 0, 1);



  // pacific shores
  static const psContainerColor = Color.fromRGBO(66, 104, 141, 1);
  static const psContainerRegisterColor = Color.fromRGBO(4, 48, 93, 1);
  static const psContainerColorShadow = Color.fromRGBO(0, 0, 0, 0.16);
  static const psContainerRegisterColorShadow =
      Color.fromRGBO(222, 238, 255, 1);
  static const psTextFieldContainerColor = Color.fromRGBO(4, 48, 93, 1);
  static const psNoteContainerColor = Color.fromRGBO(16, 61, 107, 1);

  static const psGetStartedButtonColor = Color.fromRGBO(12, 89, 171, 1);
  static const psSignUpColor = Color.fromRGBO(69, 125, 213, 1);
  static const psBackButtonColor = Color.fromRGBO(64, 64, 64, 1);
  static const psSocialLoginColor = Color.fromRGBO(3, 83, 168, 1);
  static const psHomeScreenContainerColor = Color.fromRGBO(16, 61, 107, 1);
  static const psHomeScreenContainerShadowColor = Color.fromRGBO(0, 0, 0, 0.04);
  static const psHomeScreenContainerBorderColor = Color.fromRGBO(201, 201, 201, 1);
  static const psAppbarColor = Color.fromRGBO(18, 94, 175, 1);
  static const psDividerColor = Color.fromRGBO(201, 201, 201, 1);
  static const psNotificationBorderColor = Color.fromRGBO(112, 112, 112, 1);
  static const psCaseManagerContainerColor = Color.fromRGBO(4, 48, 93, 0.9);
  static const psCaseManagerContainerShadowColor = Color.fromRGBO(222, 238, 255, 1);
  static const psEmojiContainerColor = Color.fromRGBO(16, 69, 123, 1);

  static const psLinearColorOne = Color.fromRGBO(12, 89, 171, 1);
  static const psLinearColorTwo = Color.fromRGBO(4, 30, 51, 0.95);
  static const psLinearColorThree = Color.fromRGBO(4, 30, 57, 0.95);


  // Packages Mall
  static const pmGetStartedButtonColor = Color.fromRGBO(7, 122, 197, 1);
  static const pmGetStartedButtonLowColor = Color.fromRGBO(7, 122, 197, 0.61);
  static const pmHeadlineBlackColor = Color.fromRGBO(64, 64, 64, 1);
  static const pmFloorColor = Color.fromRGBO(87, 149, 190, 1);

  static const pmSubHeadlineBlackColor = Color.fromRGBO(28, 40, 38, 1);
  static const pmForgotColor = Color.fromRGBO(100, 100, 100, 1);
  static const pmTextFieldBorderColor = Color.fromRGBO(7, 122, 197, 0.61);
  static const pmTextFieldUnSelectedBorderColor =
      Color.fromRGBO(220, 220, 220, 1);

  static const pmTextFieldBorderShadowColor = Color.fromRGBO(0, 0, 0, 0.06);
  static const pmTextFieldBorderShadowColor04 = Color.fromRGBO(0, 0, 0, 0.04);
  static const pmOpeningHourContainerShadowColor =
      Color.fromRGBO(0, 0, 0, 0.07);

  static const pmBottomButtonColor = Color.fromRGBO(17, 85, 153, 1);
  static const pmLinearColorOne = Color.fromRGBO(7, 122, 197, 1);
  static const pmLinearColorTwo = Color.fromRGBO(19, 80, 147, 1);
  static const pmSearchBarTextColor = Color.fromRGBO(100, 100, 100, 1);
  static const pmMapLinearColorOne = Color.fromRGBO(33, 120, 195, 1);
  static const pmMapLinearColorTwo = Color.fromRGBO(33, 96, 164, 1);
  static const pmMapLocationContainerBorderColor =
      Color.fromRGBO(80, 80, 80, 0.2);
  static const pmMapSelectFloorContainerColor =
      Color.fromRGBO(175, 175, 175, 1);

  static const pmExploreContainerLinearColorOne =
      Color.fromRGBO(71, 172, 185, 1);
  static const pmExploreContainerLinearColorTwo =
      Color.fromRGBO(80, 210, 191, 1);
  static const pmExploreContainerBorderColor = Color.fromRGBO(80, 80, 80, 0.2);
  static const pmExploreContainerShadowColor =
      Color.fromRGBO(74, 183, 187, 0.8);
  static const pmShopContainerColor = Color.fromRGBO(46, 46, 46, 0.895);
  static const pmButtonColor = Color.fromRGBO(46, 46, 46, 1);

  static const pmOpeningHourTextColor = Color.fromRGBO(141, 141, 141, 1);
  static const pmSelectTimeCategoryContainerColor =
      Color.fromRGBO(7, 122, 197, 1);
  static const pmParkingSummaryTextColor = Color.fromRGBO(7, 122, 197, 1);
  static const pmParkingHeadingText = Color.fromRGBO(28, 40, 38, 1);
  static const pmCheckBoxContainerBorder = Color.fromRGBO(7, 122, 197, 0.61);
  static const pmDividerColor = Color.fromRGBO(220, 220, 220, 1);
  static const pmShopCounterContainerColor = Color.fromRGBO(239, 239, 239, 1);

  // Quick colors=======================================
  static const getStartedButtonColor = Color.fromRGBO(39, 149, 39, 1);
  static const getStartedButtonColorShadow = Color.fromRGBO(0, 0, 0, 0.08);
  static const readyToEarnTextColor = Color.fromRGBO(152, 152, 152, 1);
  static const openTheTruckerAppTextColor = Color.fromRGBO(18, 99, 18, 1);
  static const textFieldBorderColor = Color.fromRGBO(209, 242, 209, 1);
  static const backButtonColor = Color.fromRGBO(219, 235, 219, 1);
  static const routeTextColor = Color.fromRGBO(119, 118, 118, 1);
  static const cardShadowColor = Color.fromRGBO(0, 0, 0, 0.12);
  static const radioButtonTextColor = Color.fromRGBO(97, 97, 97, 1);
  static const chatBorderColor = Color.fromRGBO(225, 225, 225, 1);
  static const requestTowTextColor = Color.fromRGBO(19, 72, 19, 1);
  static const checkBoxBorderColor = Color.fromRGBO(16, 85, 16, 1);
  static const recentHistoryTextColor = Color.fromRGBO(49, 49, 49, 1);
  static const statusTextColor = Color.fromRGBO(6, 139, 10, 1);
  static const searchStatusTextColor = Color.fromRGBO(151, 151, 151, 1);

  static const subHeadingTextColor = Color.fromRGBO(132, 132, 132, 1);
  static const pass = Color.fromRGBO(75, 75, 75, 1);
  static const popUpTextColor = Color.fromRGBO(180, 180, 180, 1);

  // static Color notificationCardColor =
  //      Color(0x0DF5C41C);

  static const Color notificationCardColor = Color(0x1AF5C41C);
  static const homeScreenContainerColor = Color.fromRGBO(248, 251, 248, 1);
  static const homeScreenContainerColorShadow = Color.fromRGBO(0, 0, 0, 0.16);
  static const roadServiceBtnColorShadow = Color.fromRGBO(0, 0, 0, 0.8);
  static const roadServiceBtnBorderColor = Color.fromRGBO(18, 99, 18, 0.5);
  static const activeVehicleColor = Color.fromRGBO(47, 92, 181, 1);
  static const activeVehicleStatusColor = Color.fromRGBO(18, 99, 18, 1);
  static const addNewCardBorderColor = Color.fromRGBO(209, 242, 209, 1);
  static const appTheme = Color.fromRGBO(117, 176, 46, 1);
  static const appBackground = Color.fromRGBO(223, 237, 239, 1);
  static const buttonBlue = Color.fromRGBO(19, 31, 84, 1.0);
  static const buttonBlueShadow = Color.fromRGBO(60, 76, 146, 0.85);
  static const buttonBlueShadowlight = Color.fromRGBO(60, 76, 146, 0.29);
  static const loginWelcome = Color.fromRGBO(22, 29, 60, 1);
  static const loginInfo = Color.fromRGBO(28, 30, 38, 1);
  static const smallButton = Color.fromRGBO(255, 255, 255, 0.9);
  static const smallButtonShadow = Color.fromRGBO(0, 0, 0, 0.08);
  static const featuresChipShadow = Color.fromRGBO(112, 112, 112, 0.35);
  static const smallButtonBorder = Color.fromRGBO(80, 80, 80, 0.2);
  static const smallButtonText = Color.fromRGBO(16, 17, 20, 1);
  static const smallOfficeSizeText = Color.fromRGBO(122, 122, 122, 1);
  static const officeDetailText = Color.fromRGBO(49, 49, 49, 1);
  static const seminarGradient2 = Color.fromRGBO(35, 35, 35, 0.58);
  static const seminarGradient3 = Color.fromRGBO(84, 84, 84, 0);
  static const senderRowBlueColor = Color.fromRGBO(60, 76, 146, 0.91);
  static const offWhite = Color.fromRGBO(255, 255, 255, 1);
  static const loaderBackgroundColor = Color.fromRGBO(0, 0, 0, 1);

  //===================================================

  static const appBgGradient1 = Color.fromRGBO(238, 238, 238, 1);
  static const appBgGradient2 = Color.fromRGBO(227, 236, 245, 1);
  static const appBgGradient3 = Color.fromRGBO(223, 237, 239, 1);
  static const appBgGradient4 = Color.fromRGBO(231, 242, 243, 1);

  //====================================================

  //Hex color code
  static const blueLight = "#2196F3";
  static const purpleLight = "#3F51B5";
  static const colorRedLight = "#d32f2f";
  static const colorWhite = "#ffebee";
  static const colorGreyLight = "#CFD8DC";
  static const colorGreyWhite = "#ECEFF1";

  //text Colors
  static const darkBlue = Color.fromRGBO(69, 79, 99, 1);
  static const blueShadeMedium = Color.fromRGBO(30, 136, 229, 1);
  static const blackTextColor = Color.fromRGBO(0, 0, 0, 1);
  static const darkGreyTextColor = Color.fromRGBO(70, 70, 70, 1);
  static const lightGreyTextColor = Color.fromRGBO(130, 130, 130, 0.6);
  static const whiteTextColor = Color.fromRGBO(255, 255, 255, 1);
  static const animationBackgroundColor = Color.fromRGBO(196, 209, 196, 1);
  static const transparentColor = Color.fromRGBO(255, 255, 255, 0);
  static const darkGreyBlueTextColor = Color.fromRGBO(38, 47, 86, 1);
  static const lightGreyBlueTextColor = Color.fromRGBO(124, 132, 148, 1);
  static const greyButtonTextColor = Color.fromRGBO(179, 179, 179, 1);

  static const clrLightButton = Color.fromRGBO(29, 29, 29, 1);
  static const clrBgButton = Color.fromRGBO(18, 65, 191, 1);
  static const blackHeading = Color.fromRGBO(15, 14, 14, 1);
  static const messageColor = Color.fromRGBO(60, 70, 67, 0.61);
  static const blueHomeColor = Color.fromRGBO(26, 112, 228, 1);
  static const greenColor = Color.fromRGBO(117, 176, 46, 1);
  static const walletColor = Color.fromRGBO(70, 97, 134, 1);
  static const darkBlueColor = Color.fromRGBO(26, 112, 228, 0.39);
  static const darkGreenColor = Color.fromRGBO(53, 156, 56, 1);
  static const redColor = Color.fromRGBO(206, 73, 82, 1);
  static const veryLightGreyTextColor = Color.fromRGBO(153, 153, 153, 1);
  static const purpleColorText = Color.fromRGBO(22, 29, 60, 1);
  static const sendMessageContainerBG = Color.fromRGBO(214, 215, 220, 1);

  static const blackLightTextColor = Color.fromRGBO(28, 30, 38, 1);
  static const navyBlueColor = Color.fromRGBO(93, 156, 211, 1);
}
