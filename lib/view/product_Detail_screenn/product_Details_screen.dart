import 'package:api_gridview_sample/model/home_screen_model.dart';
import 'package:api_gridview_sample/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class product_detail_screen extends StatelessWidget {
  product_detail_screen({
    super.key,
  });
  final Product product = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ));
          },
          child: Icon(
            Icons.arrow_back_sharp,
            color: Colors.black,
            size: 30,
          ),
        ),
        title: Center(
          child: Text(
            'Details',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 40),
          ),
        ),
        actions: [
          Stack(
            children: [
              Icon(
                Icons.notifications_none_sharp,
                color: Colors.black,
                size: 50,
              ),
              Positioned(
                top: 5,
                right: 5,
                child: CircleAvatar(
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.black,
                  radius: 10,
                ),
              )
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Container(
                            height: 500,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://mansharcart.com/image/${product.thumb}'))),
                          ),
                        ),
                        Positioned(
                          top: 30,
                          right: 40,
                          child: Container(
                            child: Icon(
                              Icons.favorite_outline_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        product.name.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 40),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 1),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow.shade800,
                            size: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(),
                            child: Text(
                              (product.rating.toString()),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 20),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(),
                            child: Text(
                              product.reviews.toString(),
                              style: TextStyle(
                                  color: Colors.black.withOpacity(.9)),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Text(product.description.toString()),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Choose Size',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Row(
                      children: [
                        Container(
                          child: Center(
                            child: Text(
                              'S',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 30),
                            ),
                          ),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black),
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Center(
                            child: Text(
                              'M',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 30),
                            ),
                          ),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black),
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Center(
                            child: Text(
                              'L',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 30),
                            ),
                          ),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black),
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Center(
                            child: Text(
                              'XL',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 30),
                            ),
                          ),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black),
                              color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('price'),
                    Text(
                      product.price.toString(),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.local_mall_outlined,
                            color: Colors.white,
                            size: 25,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Add to cart',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
