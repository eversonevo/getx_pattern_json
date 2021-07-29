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

        //Obx(() => Text("${productsController.testeProd[0].description}")),
        /*Obx(() => ListView(
          
          @override
          Widget build(BuildContext context) {
            return Text("${productsController.testeProd.description}");
          }
        )),*/

        Flexible(
              child: Container(
                padding: EdgeInsets.all(5),
                height: 400,
                width: double.infinity,
                child: Obx (() => ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,                  
                  itemCount: productsController.testeProd.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("${productsController.testeProd[index].title}"),
                      subtitle: Text("${productsController.testeProd[index].description}"),
                    );
                  },
                )),
              ),
            ),
        
        Text('teste2'),
        ElevatedButton(onPressed: (){
              productsController.carregaJson();
              productsController.printList();
            }, child: Text("carrega Json"))
      ],
    ));
  }
}
