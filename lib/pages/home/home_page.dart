import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:saleshop/widgets/home_widgets/catalog_list.dart';
import 'package:saleshop/widgets/product_widgets/product_feature.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 160,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/slideshow.png'),
                ),
              ),
            ),
            SizedBox(
              // height: 250,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Container(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Danh mục',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color: Colors.black,
                            )),
                      ),
                    ),
                    CatalogList(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/banner.png'),
                    ),
                  ),
                ),
              ),
            ),
            productFeature(),
          ],
        ),
      ),
    );
  }
}
