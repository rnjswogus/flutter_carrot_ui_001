import 'package:flutter/material.dart';

void main() {
  runApp(  const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'carrot',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.menu),
              Text('보살마켓'),
              Icon(Icons.person),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children:  [
              ItemData(price: 93000,),
              ItemData(price: 85000,),
              ItemData(price: 82000,),
              ItemData(price: 98000,),
              ItemData(price: 77000,),
             
            ],
          ),
        ),
      ),
    );
  }
}

class ItemData extends StatelessWidget {
  int  price;
  ItemData({
    super.key,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        const Image(
          width: 150,
          height: 150,
          image: AssetImage('images/boolsang.jpg')
          ),

        const SizedBox(width: 30,),
        Flexible(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
        
                const Text('실사용 1개월 불상 ㅍㅍ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
        
                const SizedBox(height: 5,),
        
                const Text('성남시 중원구',
                style: TextStyle(color: Colors.black54,fontSize: 12),
                ),
        
                const SizedBox(height: 20,),
                 Text('$price원',
                  style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                ),
                
                const SizedBox(height: 20,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  
                  children: const [
                    Icon(Icons.favorite_border),
                    Text('10'),
                    SizedBox(width: 10,),
                  ],)
              ],
            ),
        )
      ],
    );
  }
}