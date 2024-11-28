import 'package:flutter/material.dart';
import 'package:quote_app/UI/QuotesItem.dart';
import 'package:stacked/stacked.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ImageViewModel extends BaseViewModel {
  List<QuoteData> _quoteItems = [];
  List<QuoteData> get quoteItems => _quoteItems;

  ImageViewModel() {
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favoriteImages = prefs.getStringList('favorite_images') ?? [];

    final imagePaths = [
       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTsA2inJg1aLQPQKspWZVr9Awr2ob-bjxXnKwbEkQO_nUCS5LzDKNJsLGVFoADU-UXa3I&usqp=CAU",
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkU7bgPSj1XCRzPbR6A9v6gGuq52rwsWHwBle6L2txR4MtA5rCoCcioJe4ueIDTEu9Q00&usqp=CAU",
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvHfsT1obcwlIwRO-wRiwUXzY493e7QHjD8A&s",
     "https://i.pinimg.com/1200x/7d/51/0b/7d510bcebacb3c9965d8405107207521.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9cXSiZlQs8NLJA6x6SdO3zF7DkToGphwxsw&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQawIihrnM4WAMGJh_HN3E3iwYrhoi2eZrXOL4raWUm6XahOdoDv-71Rn6JiJZ5derK5qs&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQebGEvwLaNTEJSPloeanrw8JR83-ebhPumYmr8Mkdgv5sHHdNIK47dqAf-ndoW-koTbZU&usqp=CAU",
      "https://static.vecteezy.com/system/resources/thumbnails/025/251/112/small/never-stop-dreaming-motivational-typography-quote-design-png.png",
      "https://i.pinimg.com/736x/ea/c3/7b/eac37b2591367147ad07b746c295a7af.jpg",
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgXqEkZvsDk_dYyrhSHP9DW_gu22kajqfAYFYNd3fhTY2QhVcvFyZktE9skttHumqyz64&usqp=CAU",
     "https://i.pinimg.com/236x/05/4d/90/054d90e2716533a9dd05c0d283672ba0.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSG6vDCAdywnLUzGVPRKl_qLmoP_nuKm0m3h6TMf5VZ2Ibauru3FTwbYuvciXZZ0mOr8kQ&usqp=CAU",
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtAuPIQCr4M9OlRGPWRJKQ0EvwnvE49GIHUg&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXfydj9GZTQ4_zh2pz4gxyoOeRLXkuuchPhSlMLhSypuxWVAcbDnoHK3jJXB5SYNjMjQo&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1-11RiHOKviMq85BrpsAYKuNW2sBW3gdMEg&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSi4hawzXWSDIDmTjsboBEpb9ILfJA5Ulfz4p1dM7gRDkmkZl4e1lnGM5zja9ws0rGMQTg&usqp=CAU",
      "https://i.etsystatic.com/24710229/r/il/a8777d/3845049139/il_570xN.3845049139_iegv.jpg",
      "https://i.pinimg.com/236x/47/17/89/4717898b276d9b01534f3285171754bb.jpg",
     "https://hips.hearstapps.com/hmg-prod/images/self-love-andre-gide-1667327148.png?crop=1xw:1xh;center,top&resize=980:*"
    ];

    _quoteItems = List.generate(
      imagePaths.length,
      (index) => QuoteData(
        imagePath: imagePaths[index],
        isFavorite: favoriteImages.contains(imagePaths[index]),
      ),
    );
    notifyListeners();
  }

  Future<void> toggleFavorite(int index) async {
    final prefs = await SharedPreferences.getInstance();
    final item = _quoteItems[index];
    item.isFavorite = !item.isFavorite;

    List<String> favoriteImages = prefs.getStringList('favorite_images') ?? [];
    if (item.isFavorite) {
      favoriteImages.add(item.imagePath);
    } else {
      favoriteImages.remove(item.imagePath);
    }

    prefs.setStringList('favorite_images', favoriteImages);
    notifyListeners();
  }

  void shareImage(String imagePath) {
    Fluttertoast.showToast(
      msg: "Sharing ${imagePath}...",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black45,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}