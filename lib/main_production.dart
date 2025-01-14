import 'package:code_car/core/di/dependency_injection.dart';
import 'package:code_car/core/routing/app_router.dart';
import 'package:code_car/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setupGetIt();
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
