import 'package:flutter/material.dart';
import 'package:characters/characters.dart';

class Photo_page extends StatefulWidget {
  @override
  _Photo_pageState createState() => _Photo_pageState();
}

class _Photo_pageState extends State<Photo_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
          color: Colors.black,
        ),
        title: Text(
          'Photography_page',
          style: TextStyle(
              color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
            color: Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 5.0),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.pink[700],
                        radius: 55.0,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/camera.jpeg'),
                          radius: 50.0,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'CatchySnaps',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(30.0, 10.0, 15.0, 10.0),
                        child: Row(
                          children: <Widget>[
                            RichText(
                                text: TextSpan(
                                    text: '1,000',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                    children: <TextSpan>[
                                  TextSpan(
                                      text: '\n   posts',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14.0))
                                ])),
                            SizedBox(width: 25.0),
                            RichText(
                                text: TextSpan(
                                    text: '  50K',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                    children: <TextSpan>[
                                  TextSpan(
                                      text: '\nfollowers',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14.0))
                                ])),
                            SizedBox(width: 25.0),
                            RichText(
                                text: TextSpan(
                                    text: '2,500',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                    children: <TextSpan>[
                                  TextSpan(
                                      text: '\n  following',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14.0))
                                ])),
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 18.0),
                            child: ButtonTheme(
                              minWidth: 210.0,
                              height: 30.0,
                              child: FlatButton(
                                  onPressed: () {},
                                  // padding: EdgeInsets.fromLTRB(60.0, 10.0, 70.0, 10.0),
                                  color: Colors.blue[700],
                                  child: Text(
                                    'Follow',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.0,
                                        fontSize: 16.0),
                                  )),
                            ),
                          ),
                          SizedBox(width: 5.0),
                          SizedBox(
                            width: 30.0,
                            child: ButtonTheme(
                              minWidth: 30.0,
                              height: 30.0,
                              child: FlatButton(
                                  onPressed: () {},
                                  color: Colors.blue[700],
                                  child: Icon(Icons.arrow_drop_down,
                                      color: Colors.white)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.0),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Photography is my passion',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              height: 110.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildHighlights('assets/mountains.jpeg', 'Travel'),
                  SizedBox(width: 10.0),
                  _buildHighlights('assets/pizza.jpeg', 'Food')
                ],
              ),
            ),
            Container(
                height: 50.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.grid_on,
                          size: 32.0,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(
                          Icons.person,
                          size: 32.0,
                        ),
                        onPressed: () {})
                  ],
                )),
            Container(
              height: 320.0,
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 1.5,
                mainAxisSpacing: 1.5,
                children: <Widget>[
                  ImagesGrid('assets/lights.jpeg'),
                  ImagesGrid('assets/leaf.jpeg'),
                  ImagesGrid('assets/hills.jpeg'),
                  ImagesGrid('assets/tree.jpeg'),
                  ImagesGrid('assets/mt-fuji.jpeg'),
                  ImagesGrid('assets/sandwich.jpeg'),
                  ImagesGrid('assets/flowers.jpeg'),
                  ImagesGrid('assets/leaf.jpeg'),
                  ImagesGrid('assets/bulbs.jpeg')
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
              size: 36.0,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.black, size: 36.0),
              title: Text('')),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box, color: Colors.black, size: 36.0),
              title: Text('')),
          BottomNavigationBarItem(
              icon:
                  Icon(Icons.favorite_border, color: Colors.black, size: 36.0),
              title: Text('')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, color: Colors.black, size: 36.0),
              title: Text(''))
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  //to build story highlights

  Widget _buildHighlights(String img, String name) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, top: 10.0),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 35.0,
            child: CircleAvatar(
              backgroundImage: AssetImage(img),
              radius: 30.0,
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}

//to create grid view of images

class ImagesGrid extends StatelessWidget {
  String img;

  ImagesGrid(this.img);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
          fit: BoxFit.cover,
          height: 150.0,
          width: MediaQuery.of(context).size.width / 3,
          image: AssetImage(img)),
    );
  }
}
