import 'package:flutter/material.dart';

/// Flutter 屏幕适配
/// flutter 是以 dp 为单位渲染的
class IDKitScreen {
  // 设计稿的宽高
  static double _layoutWidth;
  static double _layoutHieght;
  // 设备像素数
  static double _devicePixelRatio;
  // 设备宽高
  static double _screenWidth;
  static double _screenHeight;
  // 状态栏高度
  static double _topStateBarHeight;
  static double _bottomStateBarHeight;

  // 字体缩放因子
  static double _textScaleFactor;

  // 单利对象
  static IDKitScreen _idKitScreen;

  /// 初始化方法
  /// layoutWidth: 设计稿宽度(1080)
  /// layoutHeight: 设计稿高度(1920)
  factory IDKitScreen(BuildContext context,
          {double layoutWidth = 1080, double layoutHeight = 1920}) =>
      _initialize(context,
          layoutHeight: layoutHeight, layoutWidth: layoutWidth);

  static IDKitScreen _initialize(BuildContext context,
      {double layoutWidth, double layoutHeight}) {
    if (_idKitScreen == null) {
      _idKitScreen = IDKitScreen._init(context,
          layoutWidth: layoutWidth, layoutHeight: layoutHeight);
    }
    return _idKitScreen;
  }

  IDKitScreen._init(BuildContext context,
      {double layoutWidth, double layoutHeight}) {
    _layoutHieght = layoutHeight;
    _layoutWidth = layoutWidth;

    // 获取设备参数对象
    MediaQueryData _mediaquerydata = MediaQuery.of(context);
    _devicePixelRatio = _mediaquerydata.devicePixelRatio;
    _screenWidth = _mediaquerydata.size.width;
    _screenHeight = _mediaquerydata.size.height;
    _topStateBarHeight = _mediaquerydata.padding.top;
    _bottomStateBarHeight = _mediaquerydata.padding.bottom;
    _textScaleFactor = _mediaquerydata.textScaleFactor;
  }

  // 获取设备信息
  /// 设备宽度
  /// 单位 dp
  static double get width => _screenWidth;

  /// 设备高度
  /// 单位 dp
  static double get height => _screenHeight;

  /// 设备状态栏高度
  /// 单位 dp
  static double get stateBarHeight => _topStateBarHeight;

  /// 设备底部安全栏高度
  /// 单位 dp
  static double get bottomBarHeight => _bottomStateBarHeight;

  /// 屏幕和设计稿宽度比
  static double get widthRatio => _screenWidth / _layoutWidth;

  /// 屏幕和设计稿高度比
  static double get heightRatio => _screenHeight / _layoutHieght;

  /// 字体缩放因子
  static double get textScaleFactor => _textScaleFactor;

  /// 逻辑单位像素内物理像素的个数
  static double get devicePixelRatio => _devicePixelRatio;
}
