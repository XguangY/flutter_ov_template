/*
 * @Author: XguangY
 * @Date: 2020-08-17 16:20:17
 * @LastEditors: XguangY
 * @LastEditTime: 2020-08-19 14:43:11
 * @Description: home page
 * @version: 0.01
 */
import 'package:flutter/material.dart';
// 测试 dio 插件 通过
// import '../components/test_dio.dart';
// 测试 fluro 通过
// import '../components/test_fluro.dart';
// 测试 flutter_screenutil
// import '../components/test_flutter_screenutil.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('首页是也！')),
      body: Center(
        // child: TestDio(),
        // child: TextFluro(),
        // child: ExampleWidget(),
        child: Text(
          'flutter_ov_template',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
      ),
    );
  }
}
