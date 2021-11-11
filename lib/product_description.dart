import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class ProductDescriptionScreen extends StatefulWidget {
  const ProductDescriptionScreen({Key? key}) : super(key: key);

  @override
  _ProductDescriptionScreenState createState() =>
      _ProductDescriptionScreenState();
}

class _ProductDescriptionScreenState extends State<ProductDescriptionScreen> {
  Widget containerTile(double height, double width, Color color) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        elevation: 0,
        iconTheme: IconThemeData.fallback(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
                child: Carousel(
                  boxFit: BoxFit.cover,
                  animationCurve: Curves.fastOutSlowIn,
                  animationDuration: Duration(milliseconds: 1000),
                  dotSize: 6,
                  dotColor: Colors.black,
                  dotIncreasedColor: Colors.red,
                  dotBgColor: Colors.transparent,
                  dotVerticalPadding: 10,
                  dotPosition: DotPosition.bottomCenter,
                  showIndicator: true,
                  indicatorBgPadding: 7,
                  images: [
                    NetworkImage(
                        'https://img-cdn1.cdnsbg.com/600/1/73/434514_1599497696041.jpg'),
                    NetworkImage(
                        'https://img-cdn1.cdnsbg.com/600/1/73/429304_1599497696029.jpg'),
                    NetworkImage(
                        'https://img-cdn1.cdnsbg.com/600/1/73/551515_1615304669010.jpg'),
                    NetworkImage(
                        'https://img-cdn1.cdnsbg.com/600/1/73/441862_1599497696043.jpg'),
                    // NetworkImage(
                    //     'https://img-cdn1.cdnsbg.com/600/1/73/434514_1599497696041.jpg'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 15.0),
              child: Text(
                'PEROSAL P03214S',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.yellow),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  containerTile(18, 18, Colors.amber),

                  ///above tried to use widget to avoid repeatation of the code..
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15.0),
              child: Text(
                'Product Details',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15.0),
              child: Text(
                'Perosal sunglasses are the most respected and well distinguished brands in the world',
                style: TextStyle(
                    height: 1.5,
                    fontWeight: FontWeight.w700,
                    color: Colors.black.withOpacity(0.7)),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                  child: Text(
                    'Delivery',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Icon(Icons.arrow_drop_down_circle),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                  child: Text(
                    'Ratings and Review',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.black.withOpacity(0.8)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Icon(Icons.arrow_drop_down_circle),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(6)),
                    child: Center(
                      child: Text(
                        "-   2   +",
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Text(
                    '\$50.20',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.only(bottom: 35.0, left: 15, right: 15),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {},
                    padding: EdgeInsets.fromLTRB(18, 6, 18, 6),
                    color: Colors.blueGrey[300],
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Text(
                      'Add to cart',
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
