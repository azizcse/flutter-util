import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SliverAppBarPage extends StatelessWidget {
  const SliverAppBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 3,
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  pinned: false,
                  expandedHeight: 250.0,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      height: 270.0,
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/beach.png',
                            fit: BoxFit.cover,
                            height: 270.0,
                          ),
                          Positioned(
                            bottom: 20,
                            left: 10,
                            right: 10,
                            child: Column(
                              children: [
                                Text("Hello"),
                                Text("Hello"),
                                Text("Hello"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    stretchModes: [StretchMode.zoomBackground],
                  ),
                  //collapsedHeight: 100,
                ),
                SliverPersistentHeader(
                  delegate: MySliverPersistentHeaderDelegate(
                    TabBar(
                      tabs: [
                        Tab(
                            icon: Icon(
                          Icons.flight,
                          color: Colors.deepOrange,
                        )),
                        Tab(
                            icon: Icon(
                          Icons.directions_transit,
                          color: Colors.deepOrange,
                        )),
                        Tab(
                            icon: Icon(
                          Icons.directions_car,
                          color: Colors.deepOrange,
                        )),
                      ],
                    ),
                  ),
                  pinned: true,
                ),
              ];
            },
            body: TabBarView(
              children: [
                Icon(Icons.flight, size: 350),
                Icon(Icons.directions_transit, size: 350),
                Icon(Icons.directions_car, size: 350),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  MySliverPersistentHeaderDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(MySliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
