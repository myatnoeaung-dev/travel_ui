import 'package:flutter/material.dart';

Widget SearchWidget(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20),
    decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: TextFormField(
      decoration: InputDecoration(
          hintText: "Discover a city",
          border: InputBorder.none,
          suffixIcon: Icon(Icons.filter_list),
          prefixIcon: Icon(
            Icons.search,
            color: Theme.of(context).colorScheme.tertiary,
          )),
    ),
  );
}
