import 'package:flutter/material.dart';
import 'package:flutterchatapp/product_description.dart';

class CatalogueScreen extends StatefulWidget {
  @override
  _CatalogueScreenState createState() => _CatalogueScreenState();
}

class _CatalogueScreenState extends State<CatalogueScreen>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Persol'),
    Tab(text: 'Werby'),
    Tab(text: 'Parker'),
    Tab(text: 'Mykta'),
    Tab(text: 'Moscot'),
  ];

  late TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: myTabs.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) {
            return TextButton(
                onPressed: () {},
                child: Image(
                  image: AssetImage('assets/images/sunglasslogo1.png'),
                ));
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              'Sunglasses',
              style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8, right: 8),
            child: Divider(
              color: Colors.black,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 8, right: 8),
            width: MediaQuery.of(context).size.width,
            child: TabBar(
              controller: _controller,
              indicatorWeight: 5,
              indicatorColor: Colors.red[300],
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.black,
              labelPadding: EdgeInsets.all(0),
              tabs: myTabs,
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 25, 30, 25),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                makeItems(),
                SizedBox(width: 25),
                makeItems(),
                SizedBox(width: 25),
                makeItems(),
                SizedBox(width: 25),
                makeItems(),
                SizedBox(width: 25),
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget makeItems() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDescriptionScreen(),
          ),
        );
      },
      child: AspectRatio(
        aspectRatio: 5.5 / 9,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 3, color: Colors.grey),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Persol P03214S',
                style: TextStyle(
                  letterSpacing: 0.2,
                  height: 1.2,
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                ),
              ),
              Container(
                height: 105,
                width: 230,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://img-cdn1.cdnsbg.com/600/1/73/384180_1599497673192.jpg'),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: Text(
                    'Most well respected and distinguisher eyewear in the world',
                    style: TextStyle(
                        color: Colors.grey.withOpacity(0.6),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        height: 1.4),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, bottom: 20),
                child: Text(
                  '\$50.20',
                  style: TextStyle(
                      color: Colors.black,
                      height: 1.1,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
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
            ],
          ),
        ),
      ),
    );
  }
}
