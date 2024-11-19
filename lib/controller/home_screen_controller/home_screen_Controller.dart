import 'package:api_gridview_sample/model/home_screen_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeScreenController extends GetxController {
  var products = <Product>[].obs;
  var isLoading = true.obs;
  @override
  void onInit() {
    super.onInit();
    getproducts();
  }

  SingleResProductAllMain? productdetails;
  Future<void> getproducts() async {
    try {
      isLoading(true);
      final url = Uri.parse(
          'http://mansharcart.com/api/products/category/139/key/123456789');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        var productdetails = singleResProductAllMainFromJson(response.body);
        // if (productdetails != null && productdetails!.products != null) {
        //   products.assignAll(productdetails!.products!);
        // }
        products.value = productdetails.products!;
      } else {
        Get.snackbar('Error', 'failed to load products');
      }
    } catch (e) {
      print(e.toString());
      Get.snackbar('Error', 'failed to load products an error occured');
    } finally {
      isLoading(false);
    }
  }
}
