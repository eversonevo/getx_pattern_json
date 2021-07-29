import 'package:flutter_vscode3/app/controller/controller_product.dart';
import 'package:get/get.dart';

class ProductBindings implements Bindings{

  @override
  void dependencies() {
    Get.lazyPut<ProductController>(() => ProductController());
  }
}