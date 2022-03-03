import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:stat1mangment/mycontrolar.dart';
class CartSscreen extends StatelessWidget {
  MyControlar c=Get.put(MyControlar());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart screen"),
        centerTitle: true,
        leading: IconButton(onPressed:(){
                Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios) ,),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              Row(
                children:[
                  Text("Book",
                    style: TextStyle(
                        fontSize: 25
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.green
                    ),
                    child: IconButton(onPressed: (){
                      c.incrimant();

                    }, icon: Icon(Icons.arrow_drop_up)),
                  ),
                  SizedBox(width: 10,),
                  Obx(()=> Text("${c.numbook}",
                    style: TextStyle(
                        fontSize: 25
                    ),
                  ),),
                  SizedBox(width: 10,),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.red
                    ),
                    child: IconButton(onPressed: (){
                      c.decrimant();

                    }, icon: Icon(Icons.arrow_drop_down)),
                  ),


                ],
              ),
              SizedBox(height: 20,),
              Row(
                children:[
                  Text("pen ",
                    style: TextStyle(
                        fontSize: 25
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.green
                    ),
                    child: IconButton(onPressed: (){
                      c.incrimantpen();

                    }, icon: Icon(Icons.arrow_drop_up)),
                  ),
                  SizedBox(width: 10,),
                  Obx(()=> Text("${c.numpen}",
                    style: TextStyle(
                        fontSize: 25
                    ),
                  ),),
                  SizedBox(width: 10,),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.red
                    ),
                    child: IconButton(onPressed: (){
                      c.decrimantpen();

                    }, icon: Icon(Icons.arrow_drop_down)),
                  ),


                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
