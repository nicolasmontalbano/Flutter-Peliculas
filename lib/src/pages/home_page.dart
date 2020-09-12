import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
    return Container(
      padding: EdgeInsets.only(top: 15.0),
      width: double.infinity,
      height: 300,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            "http://via.placeholder.com/350x150",
            fit: BoxFit.fill,
          );
        },
        itemCount: 3,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
        layout: SwiperLayout.STACK,
        itemWidth: 200.0,
      ),
    );
  }
}
