import 'dart:io';
import 'ProfilePage.dart';
import 'SalesPage.dart';
import 'NavigatorPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sun and Moon"),backgroundColor: Color.fromARGB(255, 140, 222, 143) ),
      backgroundColor: Color.fromARGB(255, 238, 248, 238),
      body:
      ListView(
      children:[
   
      
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

          Products(
              images:
                  "images/nike1.jpg",
              name: "Nike",
              price: "938 SR",
              decripe: "Blue and white"),
              Products(
              images:
                  "images/nike2.jpg",
              name: "Nike",
              price: "324 SR",
              decripe: "White"),
              Products(
              images:
                  "images/nike3.jpg",
              name: "Nike",
              price: "456 SR",
              decripe: "Black and white"),
              Products(
              images:
                  "images/nike4.jpg",
              name: "Nike",
              price: "653 SR",
              decripe: "Pink and white"),
              Products(
              images:
                  "images/adidas1.jpg",
              name: "Adidas",
              price: "435 SR",
              decripe: "Black and white"),
              Products(
              images:
                  "images/adidas2.jpg",
              name: "Adidas",
              price: "546 SR",
              decripe: "White and gray"),
              Products(
              images:
                  "images/adidas3.jpg",
              name: "Adidas",
              price: "632 SR",
              decripe: "Grey"),
              Products(
              images:
                  "images/adidas4.jpg",
              name: "Adidas",
              price: "738 SR",
              decripe: "Black and white"),
          
       ],
      ) 
     ] 
    ),
   );
  }
 }


class Products extends StatelessWidget {
  late String images;
  late String name;
  late String price;
  late String decripe;
 Products({Key? key,
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
            
            Text(price,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900,color: Colors.green),),
            
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
  