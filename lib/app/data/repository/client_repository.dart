



import 'package:flutter_vscode3/app/data/model/client.dart';
import 'package:flutter_vscode3/app/data/provider/provider_client.dart';


class ClientRepository {

  final ClientProvider _clientProvider = ClientProvider();
  //List<Product> lista = [];

  void insertDB(Client client){
      _clientProvider.insertDB(client);
  }

  void deleteDB(String idClient){
    _clientProvider.deleteDB(idClient);
  }

  void updateDB(String idClient){
    _clientProvider.updateDB(idClient);
  }

  void searchDB(String item){
    _clientProvider.searchDB(item);
  }

  void getAllDB(){
    _clientProvider.getAllDB();
  }

}