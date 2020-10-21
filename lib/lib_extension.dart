import 'package:idkit_screen/lib_screen.dart';

extension IDKitInt on num {
  double get w {
    return IDKitScreen.widthRatio * this;
  }

  double get h {
    return IDKitScreen.heightRatio * this;
  }

  /// 字体，不随系统字体改变
  double get sp {
    return IDKitScreen.widthRatio * this;
  }

  /// 字体，随系统字体改变
  double get ssp {
    return (IDKitScreen.widthRatio * this) / IDKitScreen.textScaleFactor;
  }
}
