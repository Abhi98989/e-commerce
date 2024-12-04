import 'package:get_storage/get_storage.dart';

class TLocalStorage{
  static final TLocalStorage _instance=TLocalStorage();
  factory TLocalStorage(){
    return _instance;
  }
  //TLocalStorage._internal();
  final _storage=GetStorage();

  //Generic method to save data
  Future<void> saveData<T>(String key, T value) async{
    await _storage.write(key, value);
  }
  //Generic method to read data
  T? readData<T>(String key){
    return _storage.read<T>(key);
  }

  //Generic method to remove data
  Future<void> removeData(String key){
    return _storage.remove(key);
  } 

  //clear all data in storage
  Future<void> clearAll(){
    return _storage.erase();
  }

}