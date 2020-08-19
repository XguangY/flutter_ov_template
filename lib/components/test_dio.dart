/*
 * @Author: XguangY
 * @Date: 2020-08-18 14:23:04
 * @LastEditors: XguangY
 * @LastEditTime: 2020-08-18 14:40:12
 * @Description: dio 测试组件
 * @version: 0.01
 */
import 'package:flutter/material.dart';
import '../service/serviceMethod.dart';

class TestDio extends StatefulWidget {
  @override
  _TestDioState createState() => _TestDioState();
}

class _TestDioState extends State<TestDio> {
  // 设置页面初始值
  String homePageContent = '正在获取数据';
  @override
  void initState() {
    getHomePageContent().then((val) {
      setState(() {
        homePageContent = val.toString();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(homePageContent),
      ),
    );
  }
}
