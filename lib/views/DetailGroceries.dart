import 'package:flutter/material.dart';
import 'package:kuispraktpm/model/groceries.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatefulWidget {
  final Groceries product;
  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.name),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: () {},
              icon: Icon(Icons.favorite),
              color: Colors.white,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            child: Image.network(widget.product.productImageUrls[0]),
          ),
          Text(widget.product.name),
          Text(widget.product.price),
          Text("Discount"+ " " + widget.product.discount),
          Text(widget.product.storeName),
          Text(widget.product.description),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _launchUrl('https://spada.upnyk.ac.id/');
      },
        child: Icon(Icons.open_in_browser),
      ),
    );
  }
  Future<void> _launchUrl(String url) async{
    final Uri _url = Uri.parse(url);
    if(!await launchUrl(_url)){
      throw Exception('Could not launch $_url');
    }
  }
}
