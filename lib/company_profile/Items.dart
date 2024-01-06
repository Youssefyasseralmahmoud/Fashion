

import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
            itemCount: 8,
            itemBuilder: (BuildContext contex, int index) {
              return ItemCard(
                index: index,
              );
            }));
  }
}

class ItemCard extends StatelessWidget {
  final int index;

  const ItemCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: GestureDetector(
        onTap: () {},
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(7, 7, 7, 7),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("images/pink.png"),
                ),
                Text('Shert',style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal)),

                Column(
                  children: [
                    FavoriteButton(

                      isFavorite: false,
                      // iconDisabledColor: Colors.white,
                      valueChanged: (_isFavorite) {
                        print('Is Favorite : $_isFavorite');
                      },
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
