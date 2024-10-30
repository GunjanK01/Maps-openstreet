import 'package:flutter/material.dart';
import 'package:two_screen/mapScreen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Maps!",style: TextStyle(color: Colors.black54,fontSize: 28),),
       ),
       body: Column(
        children: [
          Positioned(
            height: 5, width: 5,
            top: 0,right:0,
            child:Image.asset('assets/sup.png') ),

          // Positioned(
          //   bottom: 0,right: 0,
          //   height: 30, width: 30,
          //   child: Image.asset('assets/sou.png')),
          const SizedBox(height: 20,),

          Column(
            
           
            children:[ 
              Container(
                height: 50,width: 300,
                color: Colors.grey.shade100,
              child: ElevatedButton(
                
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MapScreen()));
                }, 
                child: Text("Click to Visit Maps", style: TextStyle(backgroundColor: Colors.grey.shade200, fontSize: 20),)),
            ),
            ]
          )
        ],
       )
    );
  }
}