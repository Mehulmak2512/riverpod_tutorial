import 'package:flutter/material.dart';

class SliverAppbarScreen extends StatelessWidget {
  const SliverAppbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //1
      body: CustomScrollView(
        slivers: <Widget>[
          //2
          SliverAppBar(
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Goa',),
              background: Image.asset(
                'assests/images/Screenshot from 2024-06-25 15-27-16.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          //3
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (_, int index) {
                return ListTile(
                  leading: Container(
                      padding: EdgeInsets.all(8),
                      width: 50,
                    color: Colors.black,
                  ),
                  title: Text('Place ${index + 1}',),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
