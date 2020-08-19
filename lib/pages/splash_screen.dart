/*
 * @Author: XguangY
 * @Date: 2020-08-17 15:28:00
 * @LastEditors: XguangY
 * @LastEditTime: 2020-08-18 14:40:21
 * @Description: 闪屏页面
 * @version: 0.01
 */
import 'package:flutter/material.dart';
import './home.dart';

// 使用动态widget
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  // 定义动画控制器
  AnimationController _controller;
  // 定义动画
  Animation _animation;

  // 设置初始状态
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this, // 垂直同步设置
      duration: Duration(milliseconds: 3000), // 执行时间3000ms
    );

    _animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);

    // 动画事件监听器，它可以监听到动画的执行状态
    _animation.addStatusListener((status) {
      // 动画执行完毕
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => MyHome(),
            ),
            (route) => false);
      }
    });

    // 播放动画
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    // 返回透明度组件
    return FadeTransition(
      opacity: _animation, // 执行动画
      child: Image.asset(
        'assets/images/bg.gif',
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity, // 充满父容器
      ),
    );
  }
}
