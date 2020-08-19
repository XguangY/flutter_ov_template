/*
 * @Author: XguangY
 * @Date: 2020-08-18 17:48:01
 * @LastEditors: XguangY
 * @LastEditTime: 2020-08-19 11:23:17
 * @Description: 
 * @version: 0.01
 */

import 'package:flutter/material.dart';
import './routerHandler.dart';
import 'package:fluro/fluro.dart';

class Routes {
  static String root = '/';
  static String detailsPage = '/detail';
  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
      // ignore: missing_return
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        print('ERROR====>ROUTE WAS NOT FONUND!!!');
      },
    );

    router.define(detailsPage, handler: detailsHandler);
  }
}
