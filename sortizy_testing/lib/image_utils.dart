import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sortizy_testing/extensions.dart';

class ImageUtils {
  ImageUtils._();

  static Widget getImage(
    String? url, {
    BoxFit? fit,
    Widget? placeHolder,
    double? height,
    double? width,
  }) {
    final placeHolderToShow = placeHolder ?? const SizedBox();
    if (url.isNullOrEmpty) return placeHolderToShow;

    return CachedNetworkImage(
      fit: fit,
      height: height,
      width: width,
      imageUrl: url!,
      placeholder: (_, __) => placeHolderToShow,
      errorWidget: (_, __, ___) => placeHolderToShow,
    );
  }
}
