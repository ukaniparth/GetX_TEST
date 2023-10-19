import 'package:get/get.dart';

class controller extends GetxController
{

    int a1=0,b1=0;
    RxInt sum=0.obs;
  fun_sum(String a,String b)
  {

       a1=int.parse(a);
       b1=int.parse(b);
       sum.value=a1+b1;

  }

}