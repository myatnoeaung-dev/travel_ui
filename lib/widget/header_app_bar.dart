import 'package:core_module/extensions.dart';

import 'package:flutter/material.dart';

Widget HeaderAppBar(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 20),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
        child: Icon(
          Icons.person,
          color: Theme.of(context).colorScheme.onTertiaryContainer,
        ),
      ),
      Expanded(
        child: Container(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back",
                style: context.bodyMedium,
              ),
              Text(
                "Ronal Richards",
                style:
                    context.titleLarge!.copyWith(fontWeight: FontWeight.w900),
              )
            ],
          ),
        ),
      ),
      ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              primary: Theme.of(context).colorScheme.tertiaryContainer,
              fixedSize: const Size(40, 40)),
          child: Icon(
            Icons.notifications_outlined,
            color: Theme.of(context).colorScheme.onTertiaryContainer,
          ))
    ]),
  );
}