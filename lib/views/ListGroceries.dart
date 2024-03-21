import 'package:flutter/material.dart';
import 'package:kuispraktpm/views/DetailGroceries.dart';
import '../model/groceries.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KUIS TPM IF-E'),
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index){
          final Groceries product = groceryList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(product: product),));
            },
            child: Card(
              child: Column(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    child: Image.network(product.productImageUrls[0]),
                  ),
                  Text(product.name),
                  Text(product.price),
                  Container(
                    color: Colors.red,
                    child: Text("Discount"+ " " + product.discount),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: groceryList.length,
      ),
    );
  }
}
