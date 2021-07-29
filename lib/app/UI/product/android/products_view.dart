import 'package:flutter/material.dart';
import 'package:flutter_vscode3/app/controller/controller_product.dart';
import 'package:get/get.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final ProductController productsController = Get.find<ProductController>();

    return Scaffold(
      appBar: AppBar(title: Obx(() => Text("${productsController.testeProd[0].description}")),

    ),
    body: Column(
      children: [
        Obx(() => Text("${productsController.testeProd[0].description}")),
        Text('teste2'),
        ElevatedButton(onPressed: (){
              productsController.carregaJson();
              productsController.printList();
            }, child: Text("carrega Json"))
      ],
    ));
  }
}
