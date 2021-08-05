import 'package:flutter/material.dart';
import 'package:flutter_vscode3/app/routes/app_routes.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("HOME"),),
        
        body: Column(
          children: [
            ElevatedButton(onPressed: (){
              Get.toNamed(Routes.PRODUCTS);
            }, child: Text("Products")),
            ElevatedButton(onPressed: (){
              Get.toNamed(Routes.CLIENT);
            }, child: Text("Clients")),
            ElevatedButton(onPressed: (){
              Get.toNamed(Routes.HOME2);
            }, child: Text("Home2")),
            ElevatedButton(onPressed: (){
              Get.toNamed(Routes.HOME3);
            }, child: Text("Home3"))
          ],
        ),
          
      ),
    );
  }
}