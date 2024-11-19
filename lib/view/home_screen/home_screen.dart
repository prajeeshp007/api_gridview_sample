import 'package:api_gridview_sample/controller/home_screen_controller/home_screen_Controller.dart';

import 'package:api_gridview_sample/view/product_Detail_screenn/product_Details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeScreenController controller = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'All Products',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w900),
            ),
          ),
          body: Obx(
            () {
              if (controller.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              }
              if (controller.products.isEmpty) {
                return const Center(child: Text('No Data'));
              }
              return GridView.builder(
                itemCount: controller.products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 200,
                    childAspectRatio: 1),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Get.to(() => product_detail_screen(),
                        arguments: controller.products[index]);
                  },
                  child: Card(
                    elevation: 4,
                    child: Column(
                      children: [
                        Image.network(
                          'https://mansharcart.com/image/${controller.products[index].thumb}',
                        ),
                        Text(controller.products[index].name.toString()),
                        Text(controller.products[index].price.toString())
                      ],
                    ),
                  ),
                ),
              );
            },
          )),
    );
  }
}
