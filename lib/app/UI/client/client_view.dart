import 'package:flutter/material.dart';
import 'package:flutter_vscode3/app/controller/client_controller.dart';
import 'package:get/get.dart';

class ClientView extends StatelessWidget {
  const ClientView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ClientController clientController = Get.find<ClientController>();

    return Scaffold(
        appBar: AppBar(
          title: Text("CLIENT"),
        ),
        body: Column(
          children: [
            Text("TESTE"),

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
                child: Obx(() => ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: clientController.testeProd.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                              "${clientController.testeProd[index].title}"),
                          subtitle: Text(
                              "${clientController.testeProd[index].description}"),
                        );
                      },
                    )),
              ),
            ),

            Text('teste2'),
            ElevatedButton(
                onPressed: () {
                  clientController.createDB();
                  //clientController.printList();
                },
                child: Text("carrega DB")),
                ElevatedButton(
                onPressed: () {
                  clientController.getAll();
                  //clientController.printList();
                },
                child: Text("Pesquisa DB")),
                ElevatedButton(
                onPressed: () {
                  clientController.insereDB();
                  //clientController.printList();
                },
                child: Text("Insere DB"))
          ],
        ));
  }
}
