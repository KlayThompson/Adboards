import 'package:adboards/pages/login_page.dart';
import 'package:adboards/provider/category_provider.dart';
import 'package:adboards/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:adboards/routes/routes.dart';
void main() {
  var userProvider = UserProvider();
  var categoryProvider = CategoryProvider();
  final router = Router();
  Routes.configureRoutes(router);
  Routes.router = router;
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: userProvider),
          ChangeNotifierProvider.value(value: categoryProvider)
        ],
        child: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: Routes.router.generator,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: LoginPage(),
    );
  }
}
