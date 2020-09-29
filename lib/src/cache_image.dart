import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// This class customized the image download & caching experience.
///
/// It uses [CachedNetworkImage] when in mobile & desktop. When in web,
/// it will use regular [Image.network] for compatibility.
///
/// If the download is unsuccesful, a [Icons.image] will be display.
///
/// It also has a fading animaion when the image loads.
class CacheImage extends StatelessWidget {
  /// URL attached to the image to be downloaded & cached.
  final String url;
  final BoxFit fit;

  const CacheImage(
    this.url, {
    Key key,
    this.fit = BoxFit.cover,
  })  : assert(url != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (kIsWeb)
      return Image.network(
        url,
        fit: fit,
      );
    else
      return CachedNetworkImage(
        imageUrl: url,
        errorWidget: (context, url, error) => Icon(
          Icons.image,
          size: 40,
          color: Theme.of(context).textTheme.caption.color,
        ),
        fadeInDuration: Duration(milliseconds: 200),
        fit: fit,
      );
  }
}
