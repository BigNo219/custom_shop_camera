import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;

class FilterUtils {
  static ColorFilter hueFilter(double hue) {
    return ColorFilter.matrix(ColorFilterGenerator.hueAdjustMatrix(
      value: hue,
    ));
  }

  static ColorFilter saturationFilter(double saturation) {
    return ColorFilter.matrix(ColorFilterGenerator.saturationAdjustMatrix(
      value: saturation,
    ));
  }

  static ColorFilter brightnessFilter(double brightness) {
    return ColorFilter.matrix(ColorFilterGenerator.brightnessAdjustMatrix(
      value: brightness,
    ));
  }

  static img.Image applyFilterToImage(img.Image originalImage, double hue, double saturation, double brightness) {
    return img.adjustColor(
      originalImage,
      hue: hue / 360,
      saturation: saturation,
      brightness: brightness,
    );
  }
}