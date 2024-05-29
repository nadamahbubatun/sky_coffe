import 'package:coffe_app/screen/home_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'widget/items_widgets.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTableSelection);
    super.initState();
  }

  _handleTableSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(top: 15),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.menu,
                      color: Colors.white.withOpacity(0.5),
                      size: 35,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.notifications_active,
                      color: Colors.white.withOpacity(0.5),
                      size: 35,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "it's a great day for coffe",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                )),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              width: MediaQuery.of(context).size.width,
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 50, 54, 56),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "find your coffe",
                  hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            TabBar(
                controller: _tabController,
                labelColor: Colors.orange,
                unselectedLabelColor: Colors.white.withOpacity(0.5),
                isScrollable: true,
                indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.orange,
                    ),
                    insets: EdgeInsets.symmetric(horizontal: 16)
                    ),
                    labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    labelPadding: EdgeInsets.symmetric(horizontal: 20),
                tabs: [
                  Tab(
                    text: 'hot coffe',
                  ),
                  Tab(
                    text: 'cold coffe',
                  ),
                  Tab(
                    text: 'cappucino',
                  ),
                  Tab(
                    text: 'americano',
                  )
                ]),
            SizedBox(
              height: 10,
            ),
            Center(
                child: [
             ItemsWidget(),
             ItemsWidget(),
             ItemsWidget(),
             ItemsWidget(),
             
            ][_tabController.index])
          ],
        ),
      )
      ),
      bottomNavigationBar: homebottomBar(),
    );
  }
}
