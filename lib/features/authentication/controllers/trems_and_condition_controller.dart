
import 'package:get/get.dart';


class TermsAndConditionController extends GetxController {


  // final Rx<TermsAndPolicy> _termsAndPolicy = TermsAndPolicy().obs;
  // Rx<TermsAndPolicy> get termsAndPolicy => _termsAndPolicy;

  // Future<void> fetchTermsData() async {
  //   EasyLoading.show(status: "Loading...");
  //   try {
  //     final response = await NetworkCaller().getRequest(Urls.termsAndPolicy);
  //
  //     if (response.isSuccess) {
  //       if (response.responseData is List &&
  //           (response.responseData as List).isNotEmpty) {
  //         // Access the first element of the data list
  //         final data = (response.responseData as List)[0];
  //
  //         // Check if the required fields are present in the data
  //         if (data is Map && data.containsKey('id') && data.containsKey('policy') && data.containsKey('termsConditions')) {
  //           // Cast to Map<String, dynamic>
  //           final termsMap = data as Map<String, dynamic>;
  //           // Deserialize into your model class
  //           _termsAndPolicy.value = TermsAndPolicy.fromJson(termsMap);
  //         } else {
  //           EasyLoading.showError('Data format is incorrect.');
  //         }
  //       } else {
  //         EasyLoading.showError('No policies found or data is not in expected format.');
  //       }
  //     } else {
  //       EasyLoading.showError('Failed to load data: ${response.errorMessage}');
  //     }
  //   } catch (error) {
  //     EasyLoading.showError('An error occurred: $error');
  //   } finally {
  //     EasyLoading.dismiss();
  //   }
  // }



}

