import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Sales extends StatelessWidget {
  const Sales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(title: Text("Sales Page"),
                    backgroundColor: Color.fromARGB(255, 140, 222, 143)),
      body: Padding(
      padding:  EdgeInsets.only(top: 50.0),
      child: Center(
      child: ListView(
      children: [
      SizedBox(
      height: 20,
      ),
      
      GridView(
        shrinkWrap: true,
        primary: false,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio:9/ 9),
           
        children: [
      SalesPage(
              images:
                  "images/nike1.jpg",
              name: "Nike",
              price: "300 SR",
              decripe: "Blue and white"),
      SalesPage(
              images:
                  "images/nike2.jpg",
              name: "Nike",
              price: "300 SR",
              decripe: "White"),
              SalesPage(
              images:
                  "images/nike3.jpg",
              name: "Nike",
              price: "300 SR",
              decripe: "Black and white"),
              SalesPage(
              images:
                  "images/nike4.jpg",
              name: "Nike",
              price: "300 SR",
              decripe: "Pink and white"),
              SalesPage(
              images:
                  "images/adidas1.jpg",
              name: "Adidas",
              price: "300 SR",
              decripe: "Black and white"),
              SalesPage(
              images:
                  "images/adidas2.jpg",
              name: "Adidas",
              price: "300 SR",
              decripe: "White and gray"),
              SalesPage(
              images:
                  "images/adidas3.jpg",
              name: "Adidas",
              price: "300 SR",
              decripe: "Grey"),
              SalesPage(
              images:
                  "images/adidas4.jpg",
              name: "Adidas",
              price: "300 SR",
              decripe: "Black and white"),  
          
       ],
      ) 
     ] 
    ),
   )
   )
   );
  }  
 }

 class SalesPage extends StatelessWidget {
  late String images;
  late String name;
  late String price;
  late String decripe;
 SalesPage({Key? key,
 required this.images,
 required this.name,
 required this.price,
 required this.decripe}) :
  super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 50, left: 50, bottom: 100),
      child: Container(
      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(width: 0.2)),
            
      child: Padding(
      padding: EdgeInsets.all(5),
      child:Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
            Expanded(
            child: Image.asset(images,
              height:150,
              width: 150,
              ),
            ),

            const SizedBox(
             height: 10,
            ),
            
            Text(name,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900,color: Colors.black,),),
            
            Text(price,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900,color: Colors.red),),
            
           const SizedBox(
             height: 9,
            ),

           Padding(padding: EdgeInsets.only(top: 2),
           child: Text("${decripe}"),
           ),
           
        
            Padding(
              padding: const EdgeInsets.only(left: 170),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                color:Colors.black),
                child: Icon(Icons.shopping_cart,
                       size: 22, color: Color.fromARGB(255, 255, 255, 255),),
              ),
            ),
          ]),
        ),
      ),
    );
  
  }
}
  
