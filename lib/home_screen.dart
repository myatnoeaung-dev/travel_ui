import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'widget/bottom_nav_bar.dart';
import 'widget/category_widget.dart';
import 'widget/header_app_bar.dart';
import 'widget/search_widget.dart';

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
      bottomNavigationBar: BottomNavBar(colorScheme: colorScheme),
      body: BodyWidget(),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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


