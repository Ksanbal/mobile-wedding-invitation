// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/google_map.svg
  SvgGenImage get googleMap => const SvgGenImage('assets/icons/google_map.svg');

  /// File path: assets/icons/kakao_map.svg
  SvgGenImage get kakaoMap => const SvgGenImage('assets/icons/kakao_map.svg');

  /// File path: assets/icons/kakaopay.svg
  SvgGenImage get kakaopay => const SvgGenImage('assets/icons/kakaopay.svg');

  /// File path: assets/icons/naver_map.png
  AssetGenImage get naverMap =>
      const AssetGenImage('assets/icons/naver_map.png');

  /// File path: assets/icons/tmap.svg
  SvgGenImage get tmap => const SvgGenImage('assets/icons/tmap.svg');

  /// File path: assets/icons/toss.svg
  SvgGenImage get toss => const SvgGenImage('assets/icons/toss.svg');

  /// File path: assets/icons/toss_png.png
  AssetGenImage get tossPng => const AssetGenImage('assets/icons/toss_png.png');

  /// List of all assets
  List<dynamic> get values => [
    googleMap,
    kakaoMap,
    kakaopay,
    naverMap,
    tmap,
    toss,
    tossPng,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bride.avif
  String get bride => 'assets/images/bride.avif';

  /// File path: assets/images/calendar.avif
  String get calendar => 'assets/images/calendar.avif';

  /// File path: assets/images/d_day.avif
  String get dDay => 'assets/images/d_day.avif';

  /// File path: assets/images/dinner.avif
  String get dinner => 'assets/images/dinner.avif';

  /// File path: assets/images/dinner_detail.avif
  String get dinnerDetail => 'assets/images/dinner_detail.avif';

  /// File path: assets/images/gallery.avif
  String get gallery => 'assets/images/gallery.avif';

  /// File path: assets/images/groom.avif
  String get groom => 'assets/images/groom.avif';

  /// File path: assets/images/info.avif
  String get info => 'assets/images/info.avif';

  /// File path: assets/images/location.avif
  String get location => 'assets/images/location.avif';

  /// File path: assets/images/order.avif
  String get order => 'assets/images/order.avif';

  /// File path: assets/images/splash.avif
  String get splash => 'assets/images/splash.avif';

  /// List of all assets
  List<String> get values => [
    bride,
    calendar,
    dDay,
    dinner,
    dinnerDetail,
    gallery,
    groom,
    info,
    location,
    order,
    splash,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
        colorMapper: colorMapper,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
