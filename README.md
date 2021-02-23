# Cherry Components 🍒

[![Package](https://img.shields.io/pub/v/cherry_components.svg?style=for-the-badge)](https://pub.dartlang.org/packages/cherry_components)
[![License](https://img.shields.io/github/license/jesusrp98/cherry_components.svg?style=for-the-badge)](https://www.gnu.org/licenses/gpl-3.0.en.html)
[![Patreon](https://img.shields.io/badge/Support-Patreon-orange.svg?style=for-the-badge)](https://www.patreon.com/jesusrp98)

This package provides a collection of fresh UI compoents, used in a varietude of apps, such as [SpaceX GO!](https://github.com/jesusrp98/spacex-go), among others.

## Components

Here's a list of every component & tool included in this package. You can also visit the [example](https://jesusrp98.github.io/cherry_components/) page for you to take a look at some samples.

### CacheImage
This tool uses the [CachedNetworkImage](https://pub.dev/packages/cached_network_image) package as a base to build a widget that displayes an image from an URL. As its name suggests, it features caching capabilities. It also has the ability to show an 'error' widget is the URL is broken or inaccesible.

It also features a better Flutter Web support than the underlined package it uses.

```
CacheImage(
    'https://upload.wikimedia.org/wikipedia/commons/9/9a/Gull_portrait_ca_usa.jpg',
)
```

### CardCell

This widget is used to display information using a customized `Card` widget. There are two variants, `CardCell.header` and `CardCell.body`.

The 'header' variant can display main information, like a leading image, subtitles, and also a expandable description text, using the `expand_widget` package.

```
CardCell.header(
    context,
    leading: Icon(
        Icons.image,
        size: 40,
        color: Theme.of(context).textTheme.caption.color,
    ),
    title: 'Lorem ipsum',
    subtitle: [
        ItemCell(
            icon: Icons.location_city,
            text: 'Lorem ipsum',
        ),
        ItemCell(
            icon: Icons.location_city,
            text: 'Lorem ipsum',
        ),
    ],
    details: 'Expetenda tincidunt in sed, ex partem placerat sea.',
)
```

On the other hand, the 'body' variant of the widget displays a card view, with a title at the top, and a customizable body view.

```
CardCell.body(
    context,
    title: 'Lorem ipsum',
    child: Text(
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.',
    ),
),
```

You can also use the `CardCell` widget by itself, taking advantage of its custom styling compared to a simple `Card` view.

### DetailsCell

This widget is very similiar to the `ListCell` component listed bellow, but it can display a very detailed and exandable text, using the `expand_widget` package.

```
DetailsCell(
    leading: '0',
    title: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',
    subtitle: 'Sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat',
    body:
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.',
    onTap: () => Scaffold.of(context).showSnackBar(
        SnackBar(
            content: Text("Hello, world!"),
        ),
    ),
)
```

### DialogRound

This function is pretty similar to `showDialog`, but it features a customized style, with rounded corners, and a centered, bold title at the top.

```
showRoundDialog(
    context: context,
    title: 'Lorem ipsum',
    children: [
        Center(
            child: Text('Hello world'),
        ),
    ],
)
```

You can also make this custom dialog appear at the bottom of the screen for better one-handed operations, with the `showBottomRoundDialog` function.

```
showBottomRoundDialog(
    context: context,
    title: 'Lorem ipsum',
    children: [
        Center(
            child: Text('Hello world'),
        ),
    ],
)
```

### HeaderText

This widget is displays a simple text, using a custom style & color. This can be used as the header of page sections, for example.

```
HeaderText('Lorem ipsum')
```

### ItemCell

Simillar to a `Chip`, it displays a bit of information, featuring an icon a some text, very simple stuff. You can also detect user tapping.

```
ItemCell(
    icon: Icons.location_city,
    text: 'Lorem ipsum',
    onTap: () => Scaffold.of(context).showSnackBar(
        SnackBar(
            content: Text('Lorem ipsum'),
        ),
    ),
)
```

### ListCell

This package is very similliar to Flutter's `ListTile`, but offers some cool built-in style and different variants.

```
ListCell(
    title: 'Lorem ipsum dolor sit amet',
    subtitle: 'Consectetur adipiscing elit. Fusce semper ut lacus ut feugiat. ',
    trailing: TrailingText('#99'),
),
```

The 'icon' variant makes easy to place an `IconData` object as the leading view of the list tile.

```
ListCell.icon(
    icon: Icons.location_city,
    title: 'Lorem ipsum',
    subtitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
)
```

It also offers another variant: `ListCell.svg`, which allows you to place an SVG leading the widget, similiar to `ListCell.icon`.

### RadioCell

This widget is pretty similar to `RadioTile`, but features a pretty cool custom style, with colored active background. The API is pretty similar to the mentioned Flutter widget.

```
 RadioCell<int>(
    title: 'Lorem ipsum',
    groupValue: index,
    value: 0,
    onChanged: (value) => setState(() => index = value),
)
```

## Getting Started

This project is a starting point for a Dart [package](https://flutter.io/developing-packages/), a library module containing code that can be shared easily across multiple Flutter or Dart projects.

For help getting started with Flutter, view our [online documentation](https://flutter.io/docs), which offers tutorials, samples, guidance on mobile development, and a full API reference.

## Built with

- [Flutter](https://flutter.dev/) - Beautiful native apps in record time.
- [Android Studio](https://developer.android.com/studio/index.html/) - Tools for building apps on every type of Android device.
- [Visual Studio Code](https://code.visualstudio.com/) - Code editing. Redefined.

## Authors

- **Jesús Rodríguez** - you can find me on [GitHub](https://github.com/jesusrp98), [Twitter](https://twitter.com/jesusrp98) & [Reddit](https://www.reddit.com/user/jesusrp98).

## License

This project is licensed under the GNU GPL v3 License - see the [LICENSE](LICENSE) file for details.
