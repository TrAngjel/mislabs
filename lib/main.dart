import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '203176',
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, String >> clothes = [
    {
      'name': 'Маица',
      'image': 'https://media.istockphoto.com/id/482948743/photo/blank-white-t-shirt-front-with-clipping-path.jpg?s=612x612&w=0&k=20&c=cJG_B0mOIG42FKtC_rqIeZCClYOj7UCFNNs9WTkYEEE=',
      'description': 'Убава бела маица',
      'price': '199 денара',
    },
    {
      'name': 'Панталони',
      'image': 'https://media.istockphoto.com/id/1221134337/photo/front-views-black-trousers.webp?s=1024x1024&w=is&k=20&c=rVKYfysfiwgAWdVY5d0PXcy_RQHtRtxwNQMe365kVac=',
      'description': 'Убави црни панталоне',
      'price': '599 денара',
    },
    {
      'name': 'Јакна',
      'image': 'https://media.istockphoto.com/id/163208487/photo/male-coat-isolated-on-the-white.jpg?s=1024x1024&w=is&k=20&c=_puQPTcJusuTjgxsUkBdd7QUquvOFsBiGe0FtlOOyh4=',
      'description': 'Убава црвена јакна',
      'price': '799 денара',
    },
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('203176')
      ),
      body: ListView(
        children: clothes.map((item){
          return Card(
            child: ListTile(
              title: Text(item['name']!),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsScreen(item: item),
                  ),
                );
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}

class  DetailsScreen extends StatelessWidget{
  final Map<String, String> item;

  DetailsScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item['name']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(item['image']!, height:200),
            ),
            SizedBox(height: 15),
            Text(
              item['name']!,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(item['description']!,
            style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 10),
            Text(item['price']!,
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}