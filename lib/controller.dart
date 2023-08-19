import 'package:get/state_manager.dart';
import 'package:untitled/model.dart';
import 'package:untitled/remoteservices.dart';




class WelcomeController extends GetxController{
  RxList welcomeList =[].obs;

  void fetchWelcome() async{
     var welcome = await RemoteService.fetchwelcome();
     if(welcome != null){
       welcomeList.value = welcome;

  }


  }
}