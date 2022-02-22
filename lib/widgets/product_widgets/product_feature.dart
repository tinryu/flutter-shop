import 'package:flutter/material.dart';
// import 'package:saleshop/constants.dart';
import 'package:saleshop/models/Product.dart';
import 'package:saleshop/widgets/product_widgets/product_card.dart';
import 'package:saleshop/widgets/section_title.dart';
import 'package:saleshop/pages/details/details_page.dart';

class productFeature extends StatelessWidget {
  const productFeature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SectionTitle(
            title: "Sản phẩm nổi bật",
            pressSeeAll: () {},
          ),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              childAspectRatio: 1.0,
            ),
            itemCount: demo_product.length,
            itemBuilder: (context, index) => productCard(
              image: demo_product[index].image,
              title: demo_product[index].title,
              price: demo_product[index].price,
              bgColor: demo_product[index].bgColor,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        detailPage(product: demo_product[index]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
