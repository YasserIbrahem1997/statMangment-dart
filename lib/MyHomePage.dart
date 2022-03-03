import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'cartscreen.dart';
import 'mycontrolar.dart';
class MyHomePage extends StatelessWidget {

  MyControlar c=Get.put(MyControlar());

  @override
  Widget build(BuildContext context ) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
        centerTitle: true,
        leading: IconButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                return CartSscreen();
              }));
        }, icon: Icon(Icons.shopping_cart) ,),
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
