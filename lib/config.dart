export 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

export './form/form_page.dart';

import './flutter_lqrui.dart';

class Lqr {
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
