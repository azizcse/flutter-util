import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

/*class ChatView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ChatView();
  }
}*/

class ChatView extends StatelessWidget {
  final europeanCountries = [
    'Albania',
    'Andorra',
    'Armenia',
    'Austria',
    'Azerbaijan',
    'Belarus',
    'Belgium',
    'Bosnia and Herzegovina',
    'Bulgaria',
    'Croatia',
    'Cyprus',
    'Czech Republic',
    'Denmark',
    'Estonia',
    'Finland',
    'France',
    'Georgia',
    'Germany',
    'Greece',
    'Hungary',
    'Iceland',
    'Ireland',
    'Italy',
    'Kazakhstan',
    'Kosovo',
    'Latvia',
    'Liechtenstein',
    'Lithuania',
    'Luxembourg',
    'Macedonia',
    'Malta',
    'Moldova',
    'Monaco',
    'Montenegro',
    'Netherlands',
    'Norway',
    'Poland',
    'Portugal',
    'Romania',
    'Russia',
    'San Marino',
    'Serbia',
    'Slovakia',
    'Slovenia',
    'Spain',
    'Sweden',
    'Switzerland',
    'Turkey',
    'Ukraine',
    'United Kingdom',
    'Vatican City'
  ];

  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  /*@override
  void initState() {
    super.initState();
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
  }*/

  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Scroll test",
        ),
      ),
      body: Container(
        child: ScrollablePositionedList.builder(
          itemCount: europeanCountries.length,
          itemBuilder: (context, index) {
            if(index == 0){
              return  SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        itemScrollController.scrollTo(
                            index: 10,
                            duration: Duration(seconds: 2),
                            curve: Curves.easeInOutCubic);
                      },
                      child: Text("Go to 10"),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        itemScrollController.scrollTo(
                            index: 30,
                            duration: Duration(seconds: 2),
                            curve: Curves.easeInOutCubic);
                      },
                      child: Text("Go to 20"),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        itemScrollController.scrollTo(
                            index: 40,
                            duration: Duration(seconds: 2),
                            curve: Curves.easeInOutCubic);
                      },
                      child: Text("Go to 40"),
                    ),

                    SizedBox(
                      width: 5.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        itemScrollController.scrollTo(
                            index: 40,
                            duration: Duration(seconds: 2),
                            curve: Curves.easeInOutCubic);
                      },
                      child: Text("Go to 40"),
                    ),

                    SizedBox(
                      width: 5.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        itemScrollController.scrollTo(
                            index: 40,
                            duration: Duration(seconds: 2),
                            curve: Curves.easeInOutCubic);
                      },
                      child: Text("Go to 40"),
                    ),

                    SizedBox(
                      width: 5.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        itemScrollController.scrollTo(
                            index: 40,
                            duration: Duration(seconds: 2),
                            curve: Curves.easeInOutCubic);
                      },
                      child: Text("Go to 40"),
                    ),

                    SizedBox(
                      width: 5.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        itemScrollController.scrollTo(
                            index: 40,
                            duration: Duration(seconds: 2),
                            curve: Curves.easeInOutCubic);
                      },
                      child: Text("Go to 40"),
                    ),

                    SizedBox(
                      width: 5.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        itemScrollController.scrollTo(
                            index: 40,
                            duration: Duration(seconds: 2),
                            curve: Curves.easeInOutCubic);
                      },
                      child: Text("Go to 40"),
                    ),
                  ],
                ),
              );
            }
            if (index % 2 == 0) {
              return Text('Item $index');
            } else {
              return Container(
                width: Get.width,
                height: 200,
                child: Center(
                  child: Text("Here $index"),
                ),
              );
            }
          },
          itemScrollController: itemScrollController,
          itemPositionsListener: itemPositionsListener,
        ),
      ),
    );
  }

 /* List<Widget> _getItemList() {
    List<Widget> itemList = [];
    europeanCountries.asMap().forEach((index, item) {
      if (index % 2 == 0) {
        itemList.add(
          Container(
            width: Get.width,
            height: 200,
            child: Center(
              child: Text("$item index: $index"),
            ),
          ),
        );
      } else {
        itemList.add(
          AutoScrollTag(
            key: ValueKey(index),
            controller: controller,
            index: index,
            child: ListTile(
              leading: CircleAvatar(
                child: Text(
                  item.substring(0, 1),
                ),
              ),
              title: Text("$item index: $index"),
            ),
          ),
        );
      }
    });
    return itemList;
  }*/
}
