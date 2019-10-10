export 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

export './form/form_page.dart';

import './flutter_lqrui.dart';

class Lqr {
  static const double edgeW = 10;
  static const double imageListW = 110;
  static const double imageListH = 90;
  static const Color bgColor = Color(0xFFF1F1F1);
  static const Color primaryColor = Color(0xFF325ffe);
  static const Color colorText1 = Color(0xFFb9b8b8);
  static const Color colorText2 = Color(0xFF999999);
  static const Color colorText3 = Color(0xFF666666);
  static const Color colorText4 = Color(0xFF333333);
  static const Color dividerColor = Color(0xFFeeeeee);
  static const List<BoxShadow> boxShadow = [BoxShadow(color: Color(0x38AAAAAA), offset: Offset(2.0, 2.0), blurRadius: 3.0), BoxShadow(color: Color(0x38AAAAAA), offset: Offset(-1.0, -1.0), blurRadius: 5.0)];

  // Edge++++++++++++++++++++++++++++++++++++++++++++
  edge({double left = 0, double top = 0, double right = 0, double bottom = 0}) => EdgeInsets.fromLTRB(ScreenUtil.getInstance().setWidth(left), ScreenUtil.getInstance().setWidth(top), ScreenUtil.getInstance().setWidth(right), ScreenUtil.getInstance().setWidth(bottom));
  edgeA(double style) => EdgeInsets.all(ScreenUtil.getInstance().setWidth(style));
  edgeH({double style, double left, double top, double right, double bottom}) => EdgeInsets.fromLTRB(ScreenUtil.getInstance().setWidth(left == null ? style : left), ScreenUtil.getInstance().setWidth(top == null ? style : top), ScreenUtil.getInstance().setWidth(right == null ? style : right), ScreenUtil.getInstance().setWidth(bottom == null ? style : bottom));
  edgeLR(double style) => EdgeInsets.fromLTRB(ScreenUtil.getInstance().setWidth(style), 0.0, ScreenUtil.getInstance().setWidth(style), 0.0);
  edgeTB(double style) => EdgeInsets.fromLTRB(0.0, ScreenUtil.getInstance().setWidth(style), 0.0, ScreenUtil.getInstance().setWidth(style));
  edgeL(double style) => EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(style));
  edgeT(double style) => EdgeInsets.only(top: ScreenUtil.getInstance().setWidth(style));
  edgeR(double style) => EdgeInsets.only(right: ScreenUtil.getInstance().setWidth(style));
  edgeB(double style) => EdgeInsets.only(bottom: ScreenUtil.getInstance().setWidth(style));
  // ++++++++++++++++++++++++++++++++++++++++++++
  size(double style) => ScreenUtil.getInstance().setSp(style);
  width(double style) => ScreenUtil.getInstance().setWidth(style != 0 ? style : Lqrui().width);
  height(double style) => ScreenUtil.getInstance().setHeight(style != 0 ? style : Lqrui().height);
}
