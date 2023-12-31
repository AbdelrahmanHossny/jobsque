import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque/firebase_options.dart';
import 'package:jobsque/screens/splash_screen/view.dart';

void main() async {


// ...

await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            theme: ThemeData(
                platform: TargetPlatform.iOS,
                fontFamily: 'sf',
                scaffoldBackgroundColor: Color(0xffFFFFFF),
                primaryColor: Color(0xff111827)),
            title: 'JOBSQUE',
            debugShowCheckedModeBanner: false,
            home: const splah_screen(),
          );
        });
  }
}
