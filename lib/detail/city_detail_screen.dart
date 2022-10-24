import 'package:cached_network_image/cached_network_image.dart';
import 'package:core_module/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../home/widget/popular_categories_widget.dart';

class CityDetailScreen extends StatelessWidget {
  const CityDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            color: colorScheme.background,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(15,0,15,0),
              child: Row(children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                const Text("Back")
              ]),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      height: (MediaQuery.of(context).size.height / 2) - 70,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: CachedNetworkImageProvider(
                                        "https://th.bing.com/th/id/OIP.Ix6XjMbuCvoq3EQNgJoyEQHaFj?pid=ImgDet&rs=1")),
                                color: colorScheme.primary,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Positioned(
                              right: 10,
                              child: Container(
                                height:
                                    (MediaQuery.of(context).size.height / 2) -
                                        70,
                                child: Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black38,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                image: const DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: CachedNetworkImageProvider(
                                                        "https://th.bing.com/th/id/OIP.Ix6XjMbuCvoq3EQNgJoyEQHaFj?pid=ImgDet&rs=1")),
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            height: 50,
                                            width: 50,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                image: const DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: CachedNetworkImageProvider(
                                                        "https://th.bing.com/th/id/OIP.Ix6XjMbuCvoq3EQNgJoyEQHaFj?pid=ImgDet&rs=1")),
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            height: 50,
                                            width: 50,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                image: const DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: CachedNetworkImageProvider(
                                                        "https://th.bing.com/th/id/OIP.Ix6XjMbuCvoq3EQNgJoyEQHaFj?pid=ImgDet&rs=1")),
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            height: 50,
                                            width: 50,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                image: const DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: CachedNetworkImageProvider(
                                                        "https://th.bing.com/th/id/OIP.Ix6XjMbuCvoq3EQNgJoyEQHaFj?pid=ImgDet&rs=1")),
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            height: 50,
                                            width: 50,
                                          ),
                                        ]),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
                      child: SizedBox(
                          height: 90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              PopularCategoriesItem(
                                name: "Maps",
                                url:
                                    "https://i.pinimg.com/originals/4e/d4/ff/4ed4ff419a76db276e2562e5eb53c920.png",
                              ),
                              PopularCategoriesItem(
                                name: "Guide",
                                url:
                                    "https://talenthouse-res.cloudinary.com/image/upload/c_limit,h_1000,w_1000/v1/user-875922/profile/j98eqwcheb2i2pxrgnsj.jpg",
                              ),
                              PopularCategoriesItem(
                                name: "4 days 3 night",
                                url:
                                    "https://tse3.mm.bing.net/th/id/OIP.J4zrQ7rdOrpZT-L_KqIDswHaHK?pid=ImgDet&rs=1",
                              ),
                              PopularCategoriesItem(
                                name: "Dinner",
                                url:
                                    "https://static.vecteezy.com/system/resources/previews/000/405/446/original/vector-character-illustration-of-people-holding-birthday-party-icons.jpg",
                              ),
                            ],
                          )),
                    ),
                    const Divider(),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Mount Bromo",
                                style: context.titleLarge!
                                    .copyWith(fontWeight: FontWeight.w900),
                              ), // runs after the above w/new duration

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
                                  const Icon(
                                    Icons.pin_drop,
                                    size: 14,
                                  ),
                                  Text("Map Direction",
                                      style: context.titleSmall!.copyWith(
                                          color: context
                                              .theme.colorScheme.primary)),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Description",
                            style: context.titleLarge!
                                .copyWith(fontWeight: FontWeight.w900),
                          ),
                          Text(
                              "The Rolle Pass is a high mountain pass in Trentino in Itely. It connects the Fiemme and Primiero valleys, and the communities of Predazzo, San Martino di ",
                              style: context.bodyMedium!),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        width: 150,
                        height: 55,
                        child: OutlinedButton(
                            onPressed: () {}, child: const Text("\$850/person"))),
                    SizedBox(
                        width: 150,
                        height: 55,
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text("Book Now")))
                  ]),
            ),
          ],
        ),
      )),
    );
  }
}
