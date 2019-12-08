import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          /* // * Old One
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text('Dashboard'),
          iconTheme: IconThemeData(color: Color(0xFF18D191)), */
          title: Text(
            'Dashboard',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: MainContent(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Color(0xFF2BD093),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              title: Text(''),
            ),
          ],
          currentIndex: _bottomNavIndex,
          onTap: (int index) {
            setState(() {
              _bottomNavIndex = index;
            });
          },
        ),
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Container(
            child: Column(
              children: <Widget>[
                // ** -- First Row With Text -- **
                Row(
                  children: <Widget>[
                    Text(
                      'Explore',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.0,
                ),
                // ** -- Second Row With Containers and Icons -- **
                Row(
                  children: <Widget>[
                    //  * First Child
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Container(
                          height: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Color(0xFFFD7384),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.drive_eta,
                                color: Colors.white,
                              ),
                              Text(
                                'Motor',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //  * Second Child
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 2.5),
                        child: Container(
                          height: 100.0,
                          child: Column(
                            children: <Widget>[
                              // * 2C--1R__Classified
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 2.5),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFF2BD093),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Icon(
                                            Icons.local_offer,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          'Classified',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              // * 2C--2R__Service
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 2.5),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFC7B4D),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Icon(
                                            Icons.beenhere,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          'Service',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //  * Third Child
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 2.5),
                        child: Container(
                          height: 100.0,
                          child: Column(
                            children: <Widget>[
                              // * 3C--1R__Properties
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 2.5),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFF53CEDB),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Icon(
                                            Icons.account_balance,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          'Properties',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              // * 3C--2R__Jobs
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 2.5),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF1B069),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Icon(
                                            Icons.art_track,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          'Jobs',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.0,
                ),
                // ** -- Third Row Text -- **
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Popular Trending',
                        style: TextStyle(
                          fontSize: 19.0,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'View All',
                        style: TextStyle(
                          color: Color(0xFF2BD093),
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.0,
                ),
                // ** -- Fourth Row Text -- **
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 140.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                image: AssetImage('images/sw.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Shawshank Redemption',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 140.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                image: AssetImage('images/fc.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Fight Club',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 140.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                image: AssetImage('images/jk.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Joker',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.0,
                ),
                // ** -- Fifth Row Text -- **
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Hot & New',
                        style: TextStyle(
                          fontSize: 19.0,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'View All',
                        style: TextStyle(
                          color: Color(0xFF2BD093),
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.0,
                ),
                // ** -- Sixth Row Text -- **
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 140.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                image: AssetImage('images/jk.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Joker',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 140.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                image: AssetImage('images/sw.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Shawshank Redemption',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 140.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                image: AssetImage('images/fc.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Fight Club',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.0,
                ),
                // ** -- Seventh Row Text -- **
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Highest Rated',
                        style: TextStyle(
                          fontSize: 19.0,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'View All',
                        style: TextStyle(
                          color: Color(0xFF2BD093),
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.0,
                ),
                // ** -- Eight Row Text -- **
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 140.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                image: AssetImage('images/fc.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Fight Club',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 140.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                image: AssetImage('images/jk.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Joker',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 140.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                image: AssetImage('images/sw.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Shawshank Redemption',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // ** -- Ninth Row Sized Box -- **
                SizedBox(
                  height: 12.0,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
