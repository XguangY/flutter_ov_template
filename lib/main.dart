/*
 * @Author: XguangY
 * @Date: 2020-08-17 13:57:16
 * @LastEditors: XguangY
 * @LastEditTime: 2020-08-19 09:20:56
 * @Description: main.dart
 * @version: 0.01
 */
import 'package:flutter/material.dart';
import './pages/splash_screen.dart';

// 引入路由所需依赖
import 'package:fluro/fluro.dart';
import './routers/routes.dart';
import './routers/application.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;

    return Container(
      child: MaterialApp(
        title: '谛听竖屏办公',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Application.router.generator,
        theme: ThemeData(primaryColor: Colors.blueGrey[700]),
        home: Scaffold(
          body: SplashScreen(),
        ),
      ),
    );
  }
}
