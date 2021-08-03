import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vscode3/app/routes/app_pages.dart';
import 'package:get/get.dart';

import 'app/routes/app_routes.dart';

void main() {
  runApp(
/*      GetMaterialApp(
        title: 'Teste',
        debugShowCheckedModeBanner: false,
        getPages: AppPages.routes,
        initialRoute: Routes.HOME,
        //initialRoute: Routes.HOME2,  // rota com resposividade  funcionando
        themeMode: ThemeMode.system,
        locale: Locale('pt','BR'),
      )*/

      DevicePreview(
        builder: (context)=>
        GetMaterialApp(
          title: 'Teste',
          debugShowCheckedModeBanner: false,
          getPages: AppPages.routes,
          //initialRoute: Routes.HOME,
          initialRoute: Routes.HOME2,  // rota com resposividade  funcionando
          themeMode: ThemeMode.system,
          locale: Locale('pt','BR'),),
        
        enabled: !kReleaseMode,
      ),
      
      

  );}