import 'package:course_online/features/authentication/presentation/screens/login_screen.dart';
import 'package:course_online/features/authentication/presentation/screens/otp_verification_screen.dart';
import 'package:course_online/features/authentication/presentation/screens/signup_screen.dart';
import 'package:course_online/features/authentication/presentation/screens/user_selection.dart';
import 'package:course_online/features/coach_nav_bar/presentation/screens/coach_nav_bar.dart';
import 'package:course_online/features/notification/presentation/screen/notification_screen.dart';
import 'package:course_online/features/onbording/presentation/screens/onbording_screen_one.dart';
import 'package:get/get.dart';
import '../features/Appointment/presentation/screens/appointment.dart';
import '../features/access_to_dashboard/presentation/Screen/access_to_dashboard.dart';
import '../features/coach_selection/presentation/screens/select_coach.dart';
import '../features/authentication/presentation/screens/trems_and_condition.dart';
import '../features/language/presentation/screens/select_language_screen.dart';
import '../features/notification/presentation/screen/alert_notification.dart';
import '../features/payment/presentation/screens/paymentCard.dart';
import '../features/payment/presentation/screens/paymentDetails.dart';
import '../features/payment/presentation/screens/paymentTokenList.dart';
import '../features/notification/presentation/screen/subscription_accepted.dart';
import '../features/notification/presentation/screen/subscription_notification_screen.dart';
import '../features/questionnaire/presentation/screens/assessLevelScreen.dart';
import '../features/questionnaire/presentation/screens/questionScreen.dart';
import '../features/splashScreen/screen/SplashScreen.dart';
import '../features/user_dashboard/presentation/Screen/user_home_screen.dart';
import '../features/user_nav_bar/presentation/screens/nav_bar.dart';

class AppRoute {
  static String singUpScreen = "/signupScreen";
  static String selectLanguageScreen = "/selectLanguageScreen";
  static String loginScreen = "/loginScreen";
  static String questionScreen = "/questionScreen";
  static String splashScreen = "/splashScreen";
  static String assessLevelScreen = "/assessLevelScreen";
  static String dashBoardScreen = "/dashBoardScreen";
  static String onBoardIngScreen = "/onBoardIngScreen";
  static String accessToDashBoard = "/accessToDashBoard";
  static String appointmentScreen = "/appointmentScreen";
  static String tokenListScreen = "/tokenListScreen";
  static String paymentCardScreen = "/paymentCardScreen";
  static String paymentDetailsScreen = "/paymentDetailsScreen";
  static String userSelection = "/userSelection";
  static String otpVerification = "/otpVerification";
  static String termsAndCondition = "/termsAndCondition";
  static String notificationScreen = "/notificationScreen";
  static String subscriptionNotificationScreen =
      "/subscriptionNotificationScreen";
  static String subscriptionAccepted = "/subscriptionAccepted";

  static String selectCoach = "/selectCoach";
  static String alertNotification = "/alertNotification";

  static String userNavBar = "/userNavBar";
  static String coachNavBar = "/coachNavBar";

  static String getLoginScreen() => loginScreen;

  static String getSignUpScreen() => singUpScreen;

  static String getLanguageScreen() => selectLanguageScreen;

  static String getAccessToDashBoard() => accessToDashBoard;

  static String getQuestionScreen() => questionScreen;

  static String getSplashScreen() => splashScreen;

  static String getAssessLevelScreen() => assessLevelScreen;

  static String getDashBoardScreen() => dashBoardScreen;

  static String getOnBordIngScreen() => onBoardIngScreen;

  static String getAppointmentScreen() => appointmentScreen;

  static String getUserSelectionScreen() => userSelection;

  static String getNotificationScreen() => notificationScreen;

  static String getSubscriptionNotificationScreen() =>
      subscriptionNotificationScreen;
  static String getOtpVerificationScreen() => otpVerification;
  static String getTermsAndConditionScreen() => termsAndCondition;

  static String getSubscriptionAccepted() => subscriptionAccepted;

  static String getTokenListScreen() => tokenListScreen;

  static String getPaymentCardScreen() => paymentCardScreen;

  static String getPaymentDetailsScreen() => paymentDetailsScreen;

  static String getSelectCoach() => selectCoach;
  static String getAlertNotification() => alertNotification;

  static String getUserNavBar() => userNavBar;
  static String getCoachNavBar() => coachNavBar;

  static List<GetPage> routes = [
    GetPage(name: loginScreen, page: () => LoginScreen()),
    GetPage(name: singUpScreen, page: () => SignUpScreen()),
    GetPage(name: selectLanguageScreen, page: () => SelectLanguageScreen()),
    GetPage(name: accessToDashBoard, page: () => AccessToDashBoard()),
    GetPage(name: splashScreen, page: () => SplashScreen()),
    GetPage(name: assessLevelScreen, page: () => const AssessLevelScreen()),
    GetPage(name: questionScreen, page: () => QuestionScreen()),
    GetPage(name: dashBoardScreen, page: () => const UserHomeScreen()),
    GetPage(name: onBoardIngScreen, page: () => OnBordIngScreen()),
    GetPage(name: appointmentScreen, page: () => AppointmentScreen()),
    GetPage(name: appointmentScreen, page: () => AppointmentScreen()),
    GetPage(name: userSelection, page: () => UserSelection()),
    GetPage(name: otpVerification, page: () => OtpVerificationScreen()),
    GetPage(name: termsAndCondition, page: () => TermsAndCondition()),
    GetPage(name: tokenListScreen, page: () => TokenListScreen()),
    GetPage(name: paymentCardScreen, page: () => PaymentCardScreen()),
    GetPage(name: paymentDetailsScreen, page: () => PaymentDetailsScreen()),
    GetPage(name: userSelection, page: () => UserSelection()),
    GetPage(name: notificationScreen, page: () => const NotificationScreen()),
    GetPage(
        name: subscriptionNotificationScreen,
        page: () => const SubscriptionNotificationScreen()),
    GetPage(
        name: subscriptionAccepted, page: () => const SubscriptionAccepted()),
    GetPage(name: selectCoach, page: () => SelectCoach()),
    GetPage(name: alertNotification, page: () => const AlertNotification()),
    GetPage(
        name: subscriptionNotificationScreen,
        page: () => const SubscriptionNotificationScreen()),
    GetPage(
        name: subscriptionAccepted, page: () => const SubscriptionAccepted()),
    GetPage(name: userNavBar, page: () =>  const UserNavBar()),
    GetPage(name: coachNavBar, page: () => const CoachNavBar()),
  ];
}
