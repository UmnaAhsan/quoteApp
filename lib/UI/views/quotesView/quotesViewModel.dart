import 'package:flutter/foundation.dart';

class QuoteItem {
  final String imagePath;
  bool isFavorite;

  QuoteItem({required this.imagePath, this.isFavorite = false});
}

class QuotesViewModel extends ChangeNotifier {
  List<QuoteItem> _quoteItems = [
    QuoteItem(imagePath: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTsA2inJg1aLQPQKspWZVr9Awr2ob-bjxXnKwbEkQO_nUCS5LzDKNJsLGVFoADU-UXa3I&usqp=CAU"),
    QuoteItem(imagePath: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkU7bgPSj1XCRzPbR6A9v6gGuq52rwsWHwBle6L2txR4MtA5rCoCcioJe4ueIDTEu9Q00&usqp=CAU"),
    QuoteItem(imagePath: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvHfsT1obcwlIwRO-wRiwUXzY493e7QHjD8A&s"),
    QuoteItem(imagePath: "https://i.pinimg.com/564x/99/9e/16/999e16f16bb6fb8d9b2a48ab9630be49.jpg"),
    QuoteItem(imagePath: "https://i.pinimg.com/1200x/7d/51/0b/7d510bcebacb3c9965d8405107207521.jpg"),
    QuoteItem(imagePath: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9cXSiZlQs8NLJA6x6SdO3zF7DkToGphwxsw&s"),
    QuoteItem(imagePath: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRItRtpHxCS7Vc0HiZGrfoE79VS1CFCtiU53Q&s"),
    QuoteItem(imagePath: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY7N6wvHWKPo7bHjjtT3XRnFxoTXWGCxUKMvUI-4q1vKjHrjZzQ0GEG7iZRvozOUgoS4U&usqp=CAU"),
    QuoteItem(imagePath: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcEevzCF1Rd4YJs3s9F96zmLvWvSGR7eO0-8GKhQpQbz4fnPzTAVd67HU5R44KmxzGqys&usqp=CAU"),
    QuoteItem(imagePath: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8BMsaEgem0xWz2IYldb_hRkNwfY1p9VLi5w&s"),
    QuoteItem(imagePath: "https://8139278.fs1.hubspotusercontent-na1.net/hubfs/8139278/Imported_Blog_Media/1527271742000-EE%20Cummings%20QUote.png"),
    QuoteItem(imagePath: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQawIihrnM4WAMGJh_HN3E3iwYrhoi2eZrXOL4raWUm6XahOdoDv-71Rn6JiJZ5derK5qs&usqp=CAU"),
    QuoteItem(imagePath: "https://i.pinimg.com/736x/ea/c3/7b/eac37b2591367147ad07b746c295a7af.jpg"),
    QuoteItem(imagePath: "https://i.pinimg.com/736x/cd/be/09/cdbe09fa5ccf2c82b81fa02f5bf8b82e.jpg"),
    QuoteItem(imagePath: "https://i.pinimg.com/736x/9b/6e/fd/9b6efd8a12274df63975e846ba91500d.jpg"),
    QuoteItem(imagePath: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgw9Y7jq3UXo7SQkI-vAc3HGlb4YvCQaZBBA&s"),
    QuoteItem(imagePath: "https://cdn.shopify.com/s/files/1/0070/7032/files/kent-quotes.png?v=1706740061"),
    QuoteItem(imagePath: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAI-YxVCZcj3-IYri8PvGG5np4q7V6p87rj8tmwrlLd6hhfRVuvVXIT-m5wwgrhitSQr4&usqp=CAU"),
    QuoteItem(imagePath: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9C3qnB2K00Yi6_bW5350J9WGopYrz75vYaRBGG8Jimnj4BrrhwZNLiAvIIpzBPTEAJhY&usqp=CAU"),
    QuoteItem(imagePath: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9cXSiZlQs8NLJA6x6SdO3zF7DkToGphwxsw&s"),
    QuoteItem(imagePath: "https://thumbs.dreamstime.com/b/life-inspirational-motivational-quotes-as-essential-aspect-creativity-not-being-afraid-to-fail-motivational-quotes-132203516.jpg"),
  ];

  List<QuoteItem> get quoteItems => _quoteItems;

  void toggleFavorite(int index) {
    _quoteItems[index].isFavorite = !_quoteItems[index].isFavorite;
    notifyListeners();
  }

  void shareImage(String imagePath) {
    print('Sharing image: $imagePath');
  }
}