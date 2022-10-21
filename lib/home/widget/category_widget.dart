import 'package:flutter/material.dart';
import 'package:core_module/extensions.dart';

Widget CategoryItems(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
    height: 60,
    child: ListView(scrollDirection: Axis.horizontal, children: [
      CatetoriesItem(
        selected: true,
      ),
      SizedBox(
        width: 10,
      ),
      CatetoriesItem(),
      SizedBox(
        width: 10,
      ),
      CatetoriesItem(),
      SizedBox(
        width: 10,
      ),
      CatetoriesItem(),
    ]),
  );
}

class CatetoriesItem extends StatelessWidget {
  bool selected;
  CatetoriesItem({
    this.selected = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: selected
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.surfaceVariant,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Image.network(
              height: 40,
              width: 40,
              fit: BoxFit.cover,
              "https://th.bing.com/th/id/OIP.Ix6XjMbuCvoq3EQNgJoyEQHaFj?pid=ImgDet&rs=1"),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Mountain",
          style: context.titleSmall!.copyWith(
              color: selected
                  ? Theme.of(context).colorScheme.onPrimary
                  : Theme.of(context).colorScheme.onSurfaceVariant),
        )
      ]),
    );
  }
}
