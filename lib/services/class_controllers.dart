import 'package:get/get.dart';
import 'package:pangeachat/services/services.dart';

class ClassController extends GetxController{
  //---------------------------------RxVariables----------------------------------//
  RxBool userExistInClass = false.obs;






  //---------------------------------Functions -----------------------------------//
  ///This function checks the user if it  exist in the class or not
  isUserExist(String classId) async {
    final bool? value = await PangeaServices.userExitInClass(classId);
      value !=null && value?userExistInClass.value = false:userExistInClass.value = true;
  }



}