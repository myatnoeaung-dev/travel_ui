import 'package:cached_network_image/cached_network_image.dart';
import 'package:core_module/extensions.dart';
import 'package:flutter/material.dart';
import 'package:travel_ui/home/widget/popular_categories_widget.dart';

import 'widget/bottom_nav_bar.dart';
import 'widget/category_widget.dart';
import 'widget/explore_cities_widget.dart';
import 'widget/header_app_bar.dart';
import 'widget/search_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(colorScheme: colorScheme),
      body: const BodyWidget(),
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
      child: ListView(
        children: [
          HeaderAppBar(context),
          SearchWidget(context),
          CategoryItems(context),
          ExploreCitiesWidget(context),
          const PopularCategoriesWidget()
        ],
      ),
    );
  }
}

