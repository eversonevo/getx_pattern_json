import 'package:flutter_vscode3/app/UI/client/client_view.dart';
import 'package:flutter_vscode3/app/UI/home/android/home2/home_page.dart';
import 'package:flutter_vscode3/app/UI/home/android/home3/home3.dart';
import 'package:flutter_vscode3/app/UI/home/android/home3/home3_bindings.dart';
import 'package:flutter_vscode3/app/UI/home/android/home_view.dart';
import 'package:flutter_vscode3/app/UI/product/android/products_view.dart';
import 'package:flutter_vscode3/app/bindings/bindings_client.dart';
import 'package:flutter_vscode3/app/bindings/bindings_product.dart';
import 'package:get/route_manager.dart';

import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
        name: Routes.PRODUCTS,
        page: () => ProductsView(),
        binding: ProductBindings()),
    GetPage(
        name: Routes.CLIENT,
        page: () => ClientView(),
        binding: ClientBindings()),
    //GetPage(name: Rotas.CADASTROUSUARIO, page: () => RegistroUsuario(),),
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
    ),
    GetPage(name: Routes.HOME2, page: () => HomePage()),
    GetPage(name: Routes.HOME3, page: () => HomeView3(), binding: HomeBinding3()),

    //GetPage(name: Rotas.CADASTROALUNOS, page: () => PaginaMatriculas(),binding: MatriculasLigacao()),
    //GetPage(name: Rotas.CADASTROLIVROS, page: () => PaginaLivros(),binding: LivrosLigacao()),
    //GetPage(name: Rotas.EMPRESTIMOS, page: () => PaginaEmprestimos(),binding: EmprestimosLigacao()),
    //GetPage(name: Rotas.DADOSLIVROS, page: () => DadosLivros(),binding: DadosLivrosLigacao()),
  ];
}
