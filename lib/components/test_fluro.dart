/*
 * @Author: XguangY
 * @Date: 2020-08-19 11:35:52
 * @LastEditors: XguangY
 * @LastEditTime: 2020-08-19 11:44:53
 * @Description: 用于测试 fluro 路由插件功能
 * @version: 0.01
 */
import 'package:flutter/material.dart';
import '../routers/application.dart';

class TextFluro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Application.router.navigateTo(context, "/detail?id=12345");
            },
            child: Text('111111'),
          )
        ],
      ),
    );
  }
}
