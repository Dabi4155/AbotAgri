import 'package:flutter/material.dart';

class CategoryText extends StatelessWidget {




final List<String> _categorylabel = ['food', 'vegetable', 'egg', 'tea', 'tea', 'tea', 'tea', 'tea', 'tea', 'tea', 'tea', 'tea', 'tea', 'tea', 'tea', 'tea', 'tea'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Category',
            style: TextStyle(
              fontSize: 19,
            ),
          ),
          Container(
            height: 40,
            child: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _categorylabel.length,
                    itemBuilder: (context, Index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ActionChip(
                            backgroundColor: Colors.green.shade200,
                            onPressed: (){},
                            label: Center(
                              child: Text(
                                _categorylabel[Index],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,),
                                ),
                            )),
                      );
                    },
                  ),
                ),


                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}