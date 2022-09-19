import 'package:core_module/core_module/utils/font_manager.dart';
import 'package:core_module/extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      bottomNavigationBar: Container(
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
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 14),
          child: ListView(
            children: [
              HeaderAppBar(context),
              SearchWidget(context),
              CategoryItems(context),
              ExploreCitiesWidget(context)
            ],
          ),
        ),
      ),
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

Widget ExploreCitiesWidget(BuildContext context) {
  final ScrollController controller = ScrollController();

  return Container(
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Explore Cities"),
      Container(
        height: 20,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Text("All"),
            Text("All"),
            Text("All"),
            Text("All"),
            Text("All"),
            Text("All"),
            Text("All"),
            Text("All"),
            Text("All"),
          ],
        ),
      ),
      Container(
        height: 170,
        child: ScrollConfiguration(
          behavior: MyCustomScrollBehavior(),
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              width: 20,
            ),
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ExploreCardWidget(context);
            },
          ),
        ),
      ),
    ]),
  );
}

Widget ExploreCardWidget(BuildContext context) {
  return Container(
    width: 150,
    decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Column(children: [
      Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Image.network(
                height: 120,
                width: 150,
                fit: BoxFit.cover,
                "https://th.bing.com/th/id/OIP.Ix6XjMbuCvoq3EQNgJoyEQHaFj?pid=ImgDet&rs=1"),
          ),
          Positioned(
            top: 5,
            right: -5,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  primary: Theme.of(context).colorScheme.primary,
                ),
                child: Icon(
                  Icons.favorite_outline,
                  size: 12,
                  color: Theme.of(context).colorScheme.onPrimary,
                )),
          ),
        ],
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 14),
        child: Column(children: [
          Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Mount Bromo"),
          Text("4.9"),
        ],
      ),
      Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Thailand"),
          Text("200"),
        ],
      ),
        ]),
      )
    ]),
  );
}

Widget CategoryItems(BuildContext context) {
  return Container(
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
