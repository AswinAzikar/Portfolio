/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/ComicNeue-Bold.ttf
  String get comicNeueBold => 'assets/fonts/ComicNeue-Bold.ttf';

  /// File path: assets/fonts/ComicNeue-BoldItalic.ttf
  String get comicNeueBoldItalic => 'assets/fonts/ComicNeue-BoldItalic.ttf';

  /// File path: assets/fonts/ComicNeue-Italic.ttf
  String get comicNeueItalic => 'assets/fonts/ComicNeue-Italic.ttf';

  /// File path: assets/fonts/ComicNeue-Light.ttf
  String get comicNeueLight => 'assets/fonts/ComicNeue-Light.ttf';

  /// File path: assets/fonts/ComicNeue-LightItalic.ttf
  String get comicNeueLightItalic => 'assets/fonts/ComicNeue-LightItalic.ttf';

  /// File path: assets/fonts/ComicNeue-Regular.ttf
  String get comicNeueRegular => 'assets/fonts/ComicNeue-Regular.ttf';

  /// File path: assets/fonts/Kalam-Bold.ttf
  String get kalamBold => 'assets/fonts/Kalam-Bold.ttf';

  /// File path: assets/fonts/Kalam-Light.ttf
  String get kalamLight => 'assets/fonts/Kalam-Light.ttf';

  /// File path: assets/fonts/Kalam-Regular.ttf
  String get kalamRegular => 'assets/fonts/Kalam-Regular.ttf';

  /// File path: assets/fonts/Ubuntu-Bold.ttf
  String get ubuntuBold => 'assets/fonts/Ubuntu-Bold.ttf';

  /// File path: assets/fonts/Ubuntu-BoldItalic.ttf
  String get ubuntuBoldItalic => 'assets/fonts/Ubuntu-BoldItalic.ttf';

  /// File path: assets/fonts/Ubuntu-Italic.ttf
  String get ubuntuItalic => 'assets/fonts/Ubuntu-Italic.ttf';

  /// File path: assets/fonts/Ubuntu-Light.ttf
  String get ubuntuLight => 'assets/fonts/Ubuntu-Light.ttf';

  /// File path: assets/fonts/Ubuntu-LightItalic.ttf
  String get ubuntuLightItalic => 'assets/fonts/Ubuntu-LightItalic.ttf';

  /// File path: assets/fonts/Ubuntu-Medium.ttf
  String get ubuntuMedium => 'assets/fonts/Ubuntu-Medium.ttf';

  /// File path: assets/fonts/Ubuntu-MediumItalic.ttf
  String get ubuntuMediumItalic => 'assets/fonts/Ubuntu-MediumItalic.ttf';

  /// File path: assets/fonts/Ubuntu-Regular.ttf
  String get ubuntuRegular => 'assets/fonts/Ubuntu-Regular.ttf';

  /// List of all assets
  List<String> get values => [
        comicNeueBold,
        comicNeueBoldItalic,
        comicNeueItalic,
        comicNeueLight,
        comicNeueLightItalic,
        comicNeueRegular,
        kalamBold,
        kalamLight,
        kalamRegular,
        ubuntuBold,
        ubuntuBoldItalic,
        ubuntuItalic,
        ubuntuLight,
        ubuntuLightItalic,
        ubuntuMedium,
        ubuntuMediumItalic,
        ubuntuRegular
      ];
}

class $AssetsPngsGen {
  const $AssetsPngsGen();

  /// File path: assets/pngs/bg.png
  AssetGenImage get bg => const AssetGenImage('assets/pngs/bg.png');

  /// List of all assets
  List<AssetGenImage> get values => [bg];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsPngsGen pngs = $AssetsPngsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
