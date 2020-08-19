/*
 * @Author: XguangY
 * @Date: 2020-08-18 13:47:15
 * @LastEditors: XguangY
 * @LastEditTime: 2020-08-18 14:39:59
 * @Description: 接口配置
 * @version: 0.01
 */

import 'package:dio/dio.dart';
import 'dart:async';
import '../config/serviceUrl.dart';

/*
 * @name: 
 * @msg: 
 * @param {type} 
 * @return {type} 
 * @description: 
 */

Future getHomePageContent() async {
  try {
    print('开始获取首页数据...............');
    Response response;
    Dio dio = new Dio();
    dio.options.contentType = "application/x-www-form-urlencoded";
    var formData = {'lon': '115.02932', 'lat': '35.76189'};
    response = await dio.post(servicePath['homePageContext'], data: formData);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('后端接口出现异常，请检测代码和服务器情况.........');
    }
  } catch (e) {
    return print('ERROR:======>' + e);
  }
}
