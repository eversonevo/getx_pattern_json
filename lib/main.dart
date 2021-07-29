import 'package:flutter/material.dart';
import 'package:flutter_vscode3/app/routes/app_pages.dart';
import 'package:get/get.dart';

import 'app/routes/app_routes.dart';

void main() {
  runApp(
      GetMaterialApp(
        title: 'Teste',
        debugShowCheckedModeBanner: false,
        getPages: AppPages.routes,
        initialRoute: Routes.HOME,
        themeMode: ThemeMode.system,
        locale: Locale('pt','BR'),
      )
  );}