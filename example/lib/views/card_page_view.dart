import 'package:cherry_components/cherry_components.dart';
import 'package:flutter/material.dart';

class CardCellView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: Separator.spaceChildren(
          space: Space.superSmall,
          children: [
            CardCell(
              child: Text('Lorem ipsum'),
            ),
            Separator.divider(),
            CardCell.header(
              context,
              title: 'Lorem ipsum',
              details: 'Lorem ipsum',
            ),
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
              details:
                  'Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at.',
            ),
            CardCell.header(
              context,
              leading: Icon(
                Icons.image,
                size: 40,
                color: Theme.of(context).textTheme.caption.color,
              ),
              title:
                  'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat',
              subtitle: [
                ItemCell(
                  icon: Icons.location_city,
                  text: 'Lorem ipsum',
                ),
              ],
              details:
                  'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.',
            ),
            Separator.divider(),
            CardCell.body(
              context,
              title: 'Lorem ipsum',
              child: Text(
                'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.',
              ),
            ),
            CardCell.body(
              context,
              title:
                  'Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam',
              child: Text(
                'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
