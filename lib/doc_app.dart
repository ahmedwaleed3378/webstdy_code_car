import 'package:code_car/core/routing/app_router.dart';
import 'package:code_car/core/routing/routes.dart';
import 'package:code_car/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter ;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Doc App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: mainBlue,
          scaffoldBackgroundColor: white
        ),
        onGenerateRoute: appRouter.generateRoute,
        initialRoute:Routes.onBoardingScreen ,
      ),
    );
  }
}