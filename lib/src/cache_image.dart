import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// This class customized the image download & caching experience.
///
/// It uses [CachedNetworkImage]. The output image will [BoxFit.cover] its parent.
///
/// If the download is unsuccesful, a [Icons.image] will be display.
///
/// It also has a fading animaion when the image loads.
class CacheImage extends StatelessWidget {
  /// URL attached to the image to be downloaded & cached.
  final String url;

  const CacheImage(this.url);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      errorWidget: (context, url, error) => Icon(
        Icons.image,
        size: 40,
        color: Theme.of(context).textTheme.caption.color,
      ),
      fadeInDuration: Duration(milliseconds: 200),
      fit: BoxFit.cover,
    );
  }
}
