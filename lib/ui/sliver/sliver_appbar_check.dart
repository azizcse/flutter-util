import 'package:flutter/material.dart';

class SliverAppbarCheck extends StatefulWidget {
  const SliverAppbarCheck({Key? key}) : super(key: key);

  @override
  _SliverAppbarCheck createState() => _SliverAppbarCheck();
}

class _SliverAppbarCheck extends State<SliverAppbarCheck> {
  ScrollController _controller = ScrollController();
  double maxExtent = 200.0;
  double currentExtent = 200.0;

  @override
  void initState() {
    _controller.addListener(() {
      setState(() {
        print("Offset value is : ${_controller.offset}");
        if(_controller.offset < 200.0) {
          currentExtent = maxExtent - _controller.offset;
          print("Offset value is 2 : ${_controller.offset}");
          print("Offset value is 3 : ${currentExtent}");
        }
        /*currentExtent = maxExtent - _controller.offset;
        if (currentExtent < 0) currentExtent = 0.0;
        if (currentExtent > maxExtent) currentExtent = maxExtent;*/
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _controller,
        slivers: [

          SliverAppBar(
            pinned: true,
            // title: Text("Head"),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              collapseMode: CollapseMode.none,
              title: Text("Title"), //Text
              titlePadding: EdgeInsets.only(bottom: currentExtent),
              background: Image.network(
                "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                fit: BoxFit.cover,
              ), //Images.network
            ),
            //FlexibleSpaceBar

            expandedHeight: 300,
            backgroundColor: Colors.grey,
           /* leading: IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Menu',
              onPressed: () {},
            ),*/
            //IconButton
            /*actions: <Widget>[
              IconButton(
                icon: Icon(Icons.comment),
                tooltip: 'Comment Icon',
                onPressed: () {},
              ), //IconButton
              IconButton(
                icon: Icon(Icons.settings),
                tooltip: 'Setting Icon',
                onPressed: () {},
              ), //IconButton
            ],*/
          ), //SliverAppBar
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                tileColor: (index % 2 == 0) ? Colors.white : Colors.green[50],
                title: Center(
                  child: Text('$index',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 50,
                          color: Colors.greenAccent[400]) //TextStyle
                      ), //Text
                ), //Center
              ), //ListTile
              childCount: 51,
            ), //SliverChildBuildDelegate
          )
        ],
      ),
    );
  }
}
