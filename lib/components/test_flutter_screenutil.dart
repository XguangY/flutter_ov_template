/*
 * @Author: XguangY
 * @Date: 2020-08-19 11:52:23
 * @LastEditors: XguangY
 * @LastEditTime: 2020-08-19 13:57:59
 * @Description: qia
 * @version: 0.01
 */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExampleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);
    return Container(
      child: Text(
        '这是适配后的文字',
        style: TextStyle(
          fontSize: ScreenUtil().setSp(50),
        ),
      ),
    );
  }
}
