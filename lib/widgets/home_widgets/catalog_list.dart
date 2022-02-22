import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:saleshop/constants.dart';
import 'package:saleshop/models/Category.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
      ),
      itemCount: demo_categories.length,
      itemBuilder: (context, index) => CategoryCard(
          icon: demo_categories[index].icon,
          title: demo_categories[index].title,
          press: () {}),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        side: BorderSide.none,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(defaultBorderRadius),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: defaultPadding / 2, horizontal: defaultPadding / 4),
        child: Column(
          children: [
            // SvgPicture.asset(icon),
            Image(
              image: NetworkImage(icon),
            ),
            const SizedBox(height: defaultPadding / 2),
            Text(
              title,
              style: TextStyle(color: Colors.black, fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
