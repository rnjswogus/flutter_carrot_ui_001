import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Image(
              width: 150,
              height: 150,
              image: AssetImage('images/boolsang.jpg')
              ),
              const SizedBox(width: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10,),

                  const Text('실사용 1개월 불상 ㅍㅍ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),

                  const SizedBox(height: 5,),

                  const Text('경기도 성남시',
                  style: TextStyle(color: Colors.black54,fontSize: 12),
                  ),

                  const SizedBox(height: 20,),
                   const Text('₩ 93,000',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                      ),
                  
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    
                    children: const [
                      SizedBox(width: 300,),
                      Icon(Icons.favorite_border),
                      Text('10')
                    ],)
                ],
              )
          ],
        ),
      ),
    );
  }
}