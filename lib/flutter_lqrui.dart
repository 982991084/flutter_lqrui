library lqrui;

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'config.dart';

export './form/form_input.dart';
export './form/form_page.dart';
export 'config.dart';

class Lqrui {
  double width;
  double height;

  Lqrui({
    this.width = 1080,
    this.height = 1920,
  });

  void init(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: width, height: height)..init(context);
  }
}
