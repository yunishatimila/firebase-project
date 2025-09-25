import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/features/category/pages/homepagee.dart';
import 'package:flutter_application_3/features/category/pages/mentors.dart';
import 'package:flutter_application_3/features/category/pages/pages.dart';
import 'package:flutter_application_3/features/profile/pages/Notice.dart';
import 'package:flutter_application_3/features/category/pages/enroll.dart';
import 'package:flutter_application_3/features/category/pages/bookmark.dart';
import 'package:flutter_application_3/features/category/pages/category.dart';
import 'package:flutter_application_3/features/category/provider/category_provider.dart';
import 'package:flutter_application_3/features/category/pages/course.dart';
import 'package:flutter_application_3/firebase_options.dart';
import 'package:flutter_application_3/features/category/pages/forms.dart';
import 'package:flutter_application_3/features/auth/pages/login.dart';
import 'package:flutter_application_3/features/profile/pages/myprofile.dart';
import 'package:flutter_application_3/features/profile/pages/profile.dart';
import 'package:flutter_application_3/features/auth/provider/auth_provider.dart';
import 'package:flutter_application_3/features/todo/provider/todoprovider.dart';
import 'package:flutter_application_3/features/profile/pages/rating.dart';
import 'package:flutter_application_3/features/auth/pages/signup.dart';
import 'package:flutter_application_3/features/todo/screens/todopage.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Todoprovider()),
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => CategoryProvider()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Consumer<AuthProvider>(
              builder: (context, authProvider, child) =>
                  authProvider.isLoggedIn ? Homepagee() : Login())),
    );
  }
}
