import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyControlar extends GetxController{

  var numbook=0.obs;
  var numpen=0.obs;
  // obs علشان اعرف انه متغير في جميع الابلكيشن
  incrimant(){
    numbook.value++;
  }
  decrimant(){
    if (numbook<1) {
      print (numbook);
    }  else{
      numbook.value--;
    }

  }
  //------------------------//
  incrimantpen(){
    numpen.value++;
  }
  decrimantpen(){
    if (numpen<1) {
      print ("pen${numpen}");
    }  else{
      numpen.value--;
    }

  }

}