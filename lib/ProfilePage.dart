import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';



class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(title: Text("Profile"),
                    backgroundColor: Color.fromARGB(255, 140, 222, 143)),
      body: Padding(
      padding:  EdgeInsets.only(top: 50.0),
      child: Center(
      child: ListView(
      children: [
          Column(
          children: [
          Container(
          child:  Icon(
             Icons.person,
             size: 100, color: Colors.black,)),
   
  const SizedBox(
    height: 20,
   ),
            
   Text("Rama Alshareef",
   style: TextStyle( 
     fontWeight: FontWeight.bold,
     fontSize: 18,)),               
   
   
  const SizedBox(
   height: 40,),

  const IconsWidjet(
    name: "Your Shopping bag",
    icon: Icons.shopping_bag),


  const SizedBox(
   height: 20,),

  const IconsWidjet(
    name: "Wallet",
    icon: Icons.wallet),  


  const SizedBox(
   height: 20,),

  const IconsWidjet(
    name: "Gift Card",
    icon: Icons.wallet_giftcard), 

  const SizedBox(
   height: 20,),

  const IconsWidjet(
    name: "Language",
    icon: Icons.language), 


  const SizedBox(
   height: 20,),

  const IconsWidjet(
    name: "Support",
    icon: Icons.support),                
         ]
        ),
       ],
      )
     )
    )
   );
  }
 }


//icons part
class IconsWidjet extends StatelessWidget {
  final String name;
  final IconData icon;
  
  const IconsWidjet({Key? key,
  required this.name,
  required this.icon}) : 
  super(key: key);

  @override
  Widget build(BuildContext context) {
      return Padding(
      padding: const EdgeInsets.only(left: 200),
      child: Row(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
          fixedSize: Size(300, 50),
          onPrimary: Colors.green,
          primary: Color.fromARGB(255, 229, 229, 229), ),
            
      child: Row(
      children: [
        Icon(icon, size: 30, color: Colors.green),
              
        SizedBox(
          width: 10,),
              
        Text(name,style: TextStyle( fontWeight: FontWeight.bold,fontSize: 15),),
            
        ]
        ),
       ),
      ],
     ),
   );     
  }
}