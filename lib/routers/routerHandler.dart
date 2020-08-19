/*
 * @Author: XguangY
 * @Date: 2020-08-18 17:45:02
 * @LastEditors: XguangY
 * @LastEditTime: 2020-08-19 11:30:36
 * @Description: 各个路由的配置文件
 * @version: 0.01
 */
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../components/test_details_page.dart';

/*
 * @name: detailsHanderl
 * @msg: 
 * @param {type} 
 * @return {type} 
 * @description: 测试fluro路由
 */
Handler detailsHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String goodsId = params['id'].first;
  print('index>details goodsID is' + goodsId);
  return DetailsPage(goodsId);
});
