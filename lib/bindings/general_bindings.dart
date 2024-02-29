import 'package:get/get.dart';
import 'package:t_store/utils/helpers/network_manager.dart';

//inside app.dart  we can call [initialBinding: GeneralBindings]
//Whenever application runs it will automatically triggers this generalBindings and initiate NetworkManager and once the instanse of NetworkManager created and initialized on the application run We can simply use [NetworkManager.instance] it is going to find the instance of that class.  
class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}
