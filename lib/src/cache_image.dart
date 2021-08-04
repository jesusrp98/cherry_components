import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@Deprecated(
  'This widget has no real use now and will be deprecated in the near future',
)
class CacheImage extends StatelessWidget {
  /// URL attached to the image to be downloaded & cached.
  final String url;
  final BoxFit fit;

  const CacheImage(
    this.url, {
    Key key,
    this.fit = BoxFit.cover,
  }) : super(key: key);

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
