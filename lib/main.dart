import 'package:course_online/app.dart';
import 'package:flutter/material.dart';

import 'core/services/storage_service.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await StorageService.init();
  runApp(const CourseOnline());
}