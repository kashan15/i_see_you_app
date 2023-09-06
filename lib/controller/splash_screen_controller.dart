import 'package:get/get.dart';
import 'package:i_see_you/utils/route_utils.dart';



class SplashScreenController extends GetxController{

  @override
  void onInit() {
    super.onInit();
    goto();

  }

  goto()async{
    await Future.delayed(const Duration(seconds: 3),(){
      Get.toNamed(kNavBar);
    }
    );
  }

}
