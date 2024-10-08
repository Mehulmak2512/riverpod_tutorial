import 'package:flutter/material.dart';

class FlexWidget extends StatelessWidget {
  const FlexWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Row(
            children: [
               Flexible(
                 flex: 1,
                 child: Container(
                   margin: EdgeInsets.all(10),
                   height: 200,
                   color: Colors.blue,
                   child: Text("hgdasjdd hjasdashdjdshjd dshd ghdas ",maxLines: 1,),
                 ),
               ),
              Flexible(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 200,
                  color: Colors.red,
                  child: Text("hgdasjdd hjasdashdjdshjd dshd ghdas ",maxLines: 1,),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  height: 200,
                  margin: EdgeInsets.all(10),
                  color: Colors.yellow,
                  child: Text("hgdasjdd hjasdashdjdshjd dshd ghdas ",maxLines: 1,),
                ),
              )
            ],
          ),
          Spacer(flex: 1,),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 200,
                  color: Colors.blue,
                  child: Text("hgdasjdd hjasdashdjdshjd dshd ghdas ",maxLines: 1,),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 200,
                  color: Colors.red,
                  child: Text("hgdasjdd hjasdashdjdshjd dshd ghdas ",maxLines: 1,),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 200,
                  margin: EdgeInsets.all(10),
                  color: Colors.yellow,
                  child: Text("hgdasjdd hjasdashdjdshjd dshd ghdas ",maxLines: 1,),
                ),
              )
            ],
          ),
          Spacer(flex: 5 ,),

        ],
      ),
    );
  }
}
