/*
 * @Author: XguangY
 * @Date: 2020-08-18 17:41:25
 * @LastEditors: XguangY
 * @LastEditTime: 2020-08-18 17:42:16
 * @Description: 用于测试路由fluro插件的页面
 * @version: 0.01
 */
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String goodsId;
  DetailsPage(this.goodsId);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text('商品ID为：' + goodsId));
  }
}
