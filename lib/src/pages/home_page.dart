import 'package:flutter/material.dart';
import 'package:peliculas/src/widgets/card_swiper_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Películas en cines'),
        backgroundColor: Colors.indigoAccent,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            swiperTarjetas(),
          ],
        ),
      ),
    );
  }

  Widget swiperTarjetas() {
    return CardSwiper(peliculas: [1, 2, 3, 4, 5]);
  }
}
