import 'package:cached_network_image/cached_network_image.dart';
import 'package:core_module/extensions.dart';

import 'package:flutter/material.dart';

Widget HeaderAppBar(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 20,horizontal: 16),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CircleAvatar(
        radius: 30,
          backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
          backgroundImage:const CachedNetworkImageProvider(
              "https://sp-images.summitpost.org/947006.jpg?auto=format&fit=max&h=800&ixlib=php-2.1.1&q=35&s=876696700800816d01e0d1eb31ce7ab0")),
      // child: Icon(
      //   Icons.person,
      //   color: Theme.of(context).colorScheme.onTertiaryContainer,

      Expanded(
        child: Container(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
