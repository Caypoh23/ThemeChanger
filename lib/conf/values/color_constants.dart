// Dart imports:
import 'dart:ui';

// Flutter imports:
import 'package:flutter/material.dart';

class MyColors {
  //
  /// Primary
  static const primary = Color(0xFF01BFA5);
  static const primaryA50 = Color(0x8001BFA5);
  static const primaryA30 = Color(0x4D01BFA5);
  static const primaryA20 = Color(0x3301BFA5);
  static const primaryA10 = Color(0x1A01BFA5);

  /// Secondary
  static const secondary = Color(0xFFEBFAF8);
  static const secondaryA50 = Color(0x80EBFAF8);
  static const secondaryA30 = Color(0x4DEBFAF8);
  static const secondaryA20 = Color(0x33EBFAF8);
  static const secondaryA10 = Color(0x1AEBFAF8);

  /// Tertiary
  static const tertiary = Color(0xFF01BFA5);
  static const tertiaryA50 = Color(0x8001BFA5);
  static const tertiaryA30 = Color(0x4D01BFA5);
  static const tertiaryA20 = Color(0x3301BFA5);
  static const tertiaryA10 = Color(0x1A01BFA5);

  /// White
  static const white = Color(0xFFFFFFFF);
  static const whiteA50 = Color(0x80FFFFFF);
  static const whiteA30 = Color(0x66FFFFFF);
  static const whiteA20 = Color(0x44FFFFFF);
  static const whiteA10 = Color(0x1AFFFFFF);

  /// Black
  static const black = Color(0xFF000000);
  static const blackA50 = Color(0x80000000);
  static const blackA30 = Color(0x4D000000);
  static const blackA20 = Color(0x44000000);
  static const blackA10 = Color(0x1A000000);

  /// Neutral
  static const neutral = Color(0xFFF0F1F2);
  static const neutralA50 = Color(0x80F0F1F2);
  static const neutralA30 = Color(0x4DF0F1F2);
  static const neutralA20 = Color(0x44F0F1F2);
  static const neutralA10 = Color(0x1AF0F1F2);

  /// NeutralVarient
  static const neutralVarient = Color(0xFF83839B);
  static const neutralVarientA50 = Color(0x8083839B);
  static const neutralVarientA30 = Color(0x4D83839B);
  static const neutralVarientA20 = Color(0x4483839B);
  static const neutralVarientA10 = Color(0x1A83839B);

  /// Warning
  static const warning = Color(0xFFF1B135);
  static const warningA50 = Color(0x80F1B135);
  static const warningA30 = Color(0x4DF1B135);
  static const warningA20 = Color(0x44F1B135);
  static const warningA10 = Color(0x1AF1B135);

  /// Error
  static const error = Color(0xFFEB5757);
  static const errorA50 = Color(0x80EB5757);
  static const errorA30 = Color(0x4DEB5757);
  static const errorA20 = Color(0x44EB5757);
  static const errorA10 = Color(0x1AEB5757);

  /// Blue
  static const blue = Color(0xFF039BE5);
  static const blueA50 = Color(0x80039BE5);
  static const blueA30 = Color(0x4D039BE5);
  static const blueA20 = Color(0x44039BE5);
  static const blueA10 = Color(0x1A039BE5);

  static const blueLite = Color(0xFFEBF7FD);
  static const blueLiteA50 = Color(0x80EBF7FD);
  static const blueLiteA30 = Color(0x4DEBF7FD);
  static const blueLiteA20 = Color(0x44EBF7FD);
  static const blueLiteA10 = Color(0x1AEBF7FD);

  /// Other
  static const transparent = Color(0x00FFFFFF);
  static const shrimmer = Color(0xFFFAFAFB);

  ///

  static Color colorFromText(String text) {
    var hash = 0;
    for (var i = 0; i < text.length; i++) {
      hash = text.codeUnitAt(i) + ((hash << 5) - hash);
    }
    final finalHash = hash.abs() % (256 * 256 * 256);
    print(finalHash);
    final red = ((finalHash & 0xFF0000) >> 16);
    final blue = ((finalHash & 0xFF00) >> 8);
    final green = ((finalHash & 0xFF));
    final color = Color.fromRGBO(red, green, blue, 1);
    return color;
  }
}
