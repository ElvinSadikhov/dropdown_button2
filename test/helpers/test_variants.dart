import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

final ValueVariant<ViewVariant> defaultVariants = ValueVariant<ViewVariant>(
  <ViewVariant>{
    ViewVariant(
      name: 'iphone_8',
      targetPlatform: TargetPlatform.iOS,
      size: const Size(375, 667),
      devicePixelRatio: 2.0,
    ),
    ViewVariant(
      name: 'iphone_14',
      targetPlatform: TargetPlatform.iOS,
      size: const Size(390, 844),
      devicePixelRatio: 3.0,
    ),
    ViewVariant(
      name: 'pixel_5',
      targetPlatform: TargetPlatform.android,
      size: const Size(393, 851),
      devicePixelRatio: 3.0,
    ),
    ViewVariant(
      name: 'ipad_pro',
      targetPlatform: TargetPlatform.iOS,
      size: const Size(1024, 1366),
      devicePixelRatio: 2.0,
    ),
    ViewVariant(
      name: 'desktop',
      targetPlatform: TargetPlatform.macOS,
      size: const Size(1920, 1080),
      devicePixelRatio: 1.0,
    ),
  },
);

/// A class that describes the properties of the device/view.
class ViewVariant {
  const ViewVariant({
    required this.name,
    required this.targetPlatform,
    required this.size,
    required this.devicePixelRatio,
    this.textScaleFactor = 1.0,
  }) : physicalSize = size * devicePixelRatio;

  final String name;

  /// Device Platform.
  ///
  /// Images generated by golden test can have slight differences between the
  /// tests runtime platforms. Use this to enforce a specific platform across
  /// your team.
  ///
  /// Eg [TargetPlatform.linux], [TargetPlatform.macOS], [TargetPlatform.windows].
  final TargetPlatform targetPlatform;

  /// The size of the physical screen of the device, expressed in `dp` (Logical pixels).
  final Size size;

  /// The size of the actual hardware pixels on the device, expressed in `px` (Physical pixels).
  final Size physicalSize;

  /// The number of physical pixels per logical pixel (Pixel density of the device).
  ///
  /// For iOS, this translates to the `@2x` and `@3x` annotations.
  final double devicePixelRatio;

  /// The number of font pixels for each logical pixel for the device.
  final double textScaleFactor;
}
