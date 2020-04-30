import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// TODO
// class RowExpand extends StatelessWidget {
//   final Widget child;

//   const RowExpand(this.child);

//   @override
//   Widget build(BuildContext context) {
//     return ExpandChild(
//       minMessage: FlutterI18n.translate(
//         context,
//         'spacex.other.more_details',
//       ),
//       maxMessage: FlutterI18n.translate(
//         context,
//         'spacex.other.less_details',
//       ),
//       child: child,
//     );
//   }
// }

/// TODO
class TextExpand extends StatelessWidget {
  final String text;
  final int lines;

  const TextExpand(this.text, {this.lines = 8});

  factory TextExpand.small(String text) {
    return TextExpand(text, lines: 6);
  }

  @override
  Widget build(BuildContext context) {
    return ExpandText(
      text,
      maxLength: lines,
      textAlign: TextAlign.justify,
      style: GoogleFonts.rubikTextTheme(Theme.of(context).textTheme)
          .bodyText2
          .copyWith(
            color: Theme.of(context).textTheme.caption.color,
          ),
    );
  }
}

/// TODO
// class ExpandList extends StatelessWidget {
//   final Widget child;

//   const ExpandList(this.child);

//   @override
//   Widget build(BuildContext context) {
//     return ShowChild(
//       indicator: Padding(
//         padding: EdgeInsets.all(8),
//         child: Text(
//           FlutterI18n.translate(
//             context,
//             'spacex.other.all_payload',
//           ),
//           style: GoogleFonts.rubikTextTheme(Theme.of(context).textTheme)
//               .bodyText2
//               .copyWith(
//                 color: Theme.of(context).textTheme.caption.color,
//               ),
//         ),
//       ),
//       child: child,
//     );
//   }
// }
