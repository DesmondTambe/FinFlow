import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

extension SvgPictureXX on SvgPicture {
  SvgPicture fpbsvg(String name) {
    return SvgPicture.asset('assets/fpb-assets/$name.svg');
  }
}

mixin SvgPictureX {
  SvgPicture fpbsvg(String name) {
    return SvgPicture.asset('assets/fpb-assets/$name.svg');
  }
}

extension ContainerX on Widget {
  AnimatedContainer card(
      {double? radius,
      Color? color,
      double? height,
      EdgeInsets? padding,
      EdgeInsets? margin,
      Duration ? animation,
      double? width,
      double? radiusTop}) {
    return AnimatedContainer(
      duration: animation?? Duration(milliseconds: 300),
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          borderRadius: radiusTop != null
              ? BorderRadius.only(
                  topLeft: Radius.circular(radiusTop),
                  topRight: Radius.circular(radiusTop))
              : BorderRadius.circular(radius ?? 0),
          color: color),
      child: this,
    );
  }

  Padding padding({double? top, double? bottom, double? left, double? right}) {
    return Padding(
      padding: EdgeInsets.only(
          top: top ?? 0,
          bottom: bottom ?? 0,
          left: left ?? 0,
          right: right ?? 0),
      child: this,
    );
  }
}
