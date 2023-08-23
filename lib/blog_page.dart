import 'package:flutter/material.dart';
import 'package:vip_signal/custom_widgets/blog_widget.dart';

class BlogPage extends StatelessWidget {
  BlogPage({super.key});

  final List<Widget> listOfBlogWidgets = [
    getBlogWidget(
      imageName: 's.png',
      title: 'Buy signal for SafeMoon on 14th April',
      buyPrice: '12,351',
      sellPrice: '12,729',
    ),
    getBlogWidget(
      imageName: 'a.png',
      title: 'Sell signal for Alchemy Pay on 20th April',
      buyPrice: '45,891',
      sellPrice: '46,719',
    ),
    getBlogWidget(
      imageName: 's.png',
      title: 'Buy signal for SafeMoon on 14th April',
      buyPrice: '12,351',
      sellPrice: '12,729',
    ),
    getBlogWidget(
      imageName: 'c.png',
      title: 'Buy signal for Cosmos on 11th April',
      buyPrice: '3,351',
      sellPrice: '7,729',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'VIP signals and news',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...listOfBlogWidgets,
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Log out',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.red,
                    minimumSize: Size(200, 40),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
