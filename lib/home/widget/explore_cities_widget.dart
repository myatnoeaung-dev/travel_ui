
import 'package:core_module/extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:travel_ui/detail/city_detail_screen.dart';

Widget ExploreCitiesWidget(BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Explore Cities",
        style: context.titleLarge!.copyWith(fontWeight: FontWeight.w900),
      ),
      const SizedBox(
        height: 10,
      ),
      SizedBox(
        height: 30,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            CategoriesTextWidget(
              categoryName: "All",
            ),
            CategoriesTextWidget(
              categoryName: "Popular",
            ),
            CategoriesTextWidget(
              categoryName: "Recommanded",
            ),
            CategoriesTextWidget(
              categoryName: "Most Viewed",
            ),
            CategoriesTextWidget(
              categoryName: "Recent",
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        height: 220,
        child: ScrollConfiguration(
          behavior: MyCustomScrollBehavior(),
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
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

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}
class CategoriesTextWidget extends StatelessWidget {
  final String categoryName;
  const CategoriesTextWidget({
    required this.categoryName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(categoryName));
  }
}

Widget ExploreCardWidget(BuildContext context) {
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (_){
        return CityDetailScreen();
      }));
    },
    child: Container(
      width: 220,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceVariant,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Image.network(
                  height: 150,
                  width: 220,
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
                    size: 20,
                    color: Theme.of(context).colorScheme.onPrimary,
                  )),
            ),
          ],
        ),
        Container(
          height: 70,
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Mount Bromo",
                  style:
                      context.bodyMedium!.copyWith(fontWeight: FontWeight.w900),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star_border,
                      size: 14,
                    ),
                    Text(
                      "4.9",
                      style: context.bodyMedium!,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.location_pin,
                      size: 14,
                    ),
                    Text(
                      "Thailand",
                      style: context.bodyMedium!,
                      
                    ),
                  ],
                ),
                Row(
                  children: [
                     Text("\$200",style:context.bodyMedium!.copyWith(color: context.theme.colorScheme.primary)),
                    Text(
                      "/person",
                      style: context.bodyMedium!,
                    ),
                  ],
                ),
              ],
            ),
          ]),
        )
      ]),
    ),
  );
}