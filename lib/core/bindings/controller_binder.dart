import 'package:course_online/features/access_to_dashboard/controllers/coach_controller.dart';
import 'package:course_online/features/authentication/controllers/user_selection_controller.dart';

import 'package:course_online/features/coach_dashboard/controller/coach_dashboard_controller.dart';
import 'package:course_online/features/coach_dashboard/controller/lesson_and_session_controller.dart';

import 'package:course_online/features/onbording/controller/on_bording_screen_controller.dart';
import 'package:course_online/features/splashScreen/controller/splashController.dart';
import 'package:get/get.dart';
import '../../features/Appointment/controllers/appointmentController.dart';
import '../../features/authentication/controllers/otp_verification_controller.dart';
import '../../features/authentication/controllers/trems_and_condition_controller.dart';
import '../../features/payment/controllers/paymentController.dart';
import '../../features/questionnaire/controllers/question_controller.dart';
import 'package:course_online/features/authentication/controllers/login_controller.dart';
import 'package:course_online/features/authentication/controllers/signup_controller.dart';

import '../../features/user_dashboard/controller/user_dash_board_controller.dart';




class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(),
      fenix: true,
    );
    Get.lazyPut<OnBordIngScreenController>(
      () => OnBordIngScreenController(),
      fenix: true,
    );

    Get.lazyPut<LogInController>(
      () => LogInController(),
      fenix: true,
    );
    Get.lazyPut<SingUpController>(
      () => SingUpController(),
      fenix: true,
    );

    Get.lazyPut<QuestionController>(
      () => QuestionController(),
      fenix: true,
    );

    Get.lazyPut<CoachController>(
      () => CoachController(),
      fenix: true,
    );

    Get.lazyPut<OtpVerificationController>(
          () => OtpVerificationController(),
      fenix: false,
    );
    Get.lazyPut<TermsAndConditionController>(
          () => TermsAndConditionController(),
      fenix: true,
    );
    Get.lazyPut<UserSelectionController>(
          () => UserSelectionController(),
        fenix: true,
    );

    Get.lazyPut<TokenListController>(
          () => TokenListController(),
      fenix: true,
    );


    Get.lazyPut<AppointmentController>(
          () => AppointmentController(),
      fenix: true,
    );
    Get.lazyPut<UserDashboardController>(
          () => UserDashboardController(),
      fenix: true,
    );
    Get.lazyPut<CoachDashboardController>(
          () => CoachDashboardController(),
      fenix: true,
    );
    Get.lazyPut<LessonCreationController>(
          () => LessonCreationController(),
      fenix: true,
    );
    Get.lazyPut<UserDashboardController>(
          () => UserDashboardController(),
      fenix: true,
    );

  }
}

