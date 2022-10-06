import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.colorScheme,
  }) : super(key: key);

  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: colorScheme.primaryContainer,
      ),
      margin: EdgeInsets.all(14),
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        NavWidget(
          iconData: Icons.home_outlined,
          selected: true,
        ),
        NavWidget(iconData: Icons.explore_outlined),
        NavWidget(
          iconData: Icons.space_dashboard_outlined,
        ),
        NavWidget(
          iconData: Icons.favorite_outline,
        ),
        NavWidget(
          iconData: Icons.person_outline,
        ),
      ]),
    );
  }
}


class NavWidget extends StatelessWidget {
  IconData iconData;
  bool selected;

  NavWidget({
    required this.iconData,
    this.selected = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return selected
        ? ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                primary: Theme.of(context).colorScheme.primary,
                fixedSize: const Size(30, 30)),
            child: Icon(
              iconData,
              color: Theme.of(context).colorScheme.onPrimary,
            ))
        : Icon(
            iconData,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          );
  }
}