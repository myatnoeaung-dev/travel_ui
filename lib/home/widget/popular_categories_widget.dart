import 'package:cached_network_image/cached_network_image.dart';
import 'package:core_module/extensions.dart';
import 'package:flutter/material.dart';

class PopularCategoriesWidget extends StatelessWidget {
  const PopularCategoriesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Popular Categories",
          style: context.titleLarge!.copyWith(fontWeight: FontWeight.w900),
        ),
        const SizedBox(
          height: 20,
        ),
        PopularCategoriesList()
      ]),
    );
  }
}

class PopularCategoriesList extends StatelessWidget {
  const PopularCategoriesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          PopularCategoriesItem(
            name: "Flight",
            url:
                "https://i.pinimg.com/originals/4e/d4/ff/4ed4ff419a76db276e2562e5eb53c920.png",
          ),
          SizedBox(
            width: 20,
          ),
          PopularCategoriesItem(
            name: "Hotel",
            url:
                "https://talenthouse-res.cloudinary.com/image/upload/c_limit,h_1000,w_1000/v1/user-875922/profile/j98eqwcheb2i2pxrgnsj.jpg",
          ),
          SizedBox(
            width: 20,
          ),
          PopularCategoriesItem(
            name: "Transport",
            url:
                "https://tse3.mm.bing.net/th/id/OIP.J4zrQ7rdOrpZT-L_KqIDswHaHK?pid=ImgDet&rs=1",
          ),
          SizedBox(
            width: 20,
          ),
          PopularCategoriesItem(
            name: "Event",
            url:
                "https://static.vecteezy.com/system/resources/previews/000/405/446/original/vector-character-illustration-of-people-holding-birthday-party-icons.jpg",
          ),
          SizedBox(
            width: 20,
          ),
          PopularCategoriesItem(
            name: "Flight",
            url:
                "https://static.vecteezy.com/system/resources/previews/000/440/751/original/vector-airplane-icon.jpg",
          ),
          SizedBox(
            width: 20,
          ),
          PopularCategoriesItem(
            name: "Flight",
            url:
                "https://static.vecteezy.com/system/resources/previews/000/440/751/original/vector-airplane-icon.jpg",
          ),
          SizedBox(
            width: 20,
          ),
          PopularCategoriesItem(
            name: "Flight",
            url:
                "https://static.vecteezy.com/system/resources/previews/000/440/751/original/vector-airplane-icon.jpg",
          ),
        ],
      ),
    );
  }
}

class PopularCategoriesItem extends StatelessWidget {
  String url;
  String name;
  PopularCategoriesItem({
    required this.name,
    required this.url,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              height: 55,
              width: 55,
              child: CircleAvatar(
                backgroundColor: Colors.amber,
                foregroundImage: CachedNetworkImageProvider(url),
              )),
          SizedBox(
            height: 10,
          ),
          Text(name),
        ],
      ),
    );
  }
}
