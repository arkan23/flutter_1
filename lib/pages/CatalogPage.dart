import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  CatalogPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25.0,),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Healthy',
                  style: TextStyle(color: Colors.white, fontFamily: 'Montserrat', fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
                SizedBox(width: 10.0,),
                Text(
                  'Food',
                  style: TextStyle(color: Colors.white, fontFamily: 'Montserrat', fontSize: 25.0),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.0,),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0))
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300.0,
                    child: ListView(
                      children: <Widget>[
                        _buildItem('assets/doctor.png', 'Salmon Hows', '\$20.00'),
                        _buildItem('assets/doctor.png', 'No Salmon Hows', '\$45.00'),
                        _buildItem('assets/doctor.png', 'Salmon Peters', '\$11.00'),
                        _buildItem('assets/doctor.png', 'Someone Hows', '\$16.00'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildItem(String imagePath, String foodName, String price) {
  return Padding(
    padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
    child: InkWell(
      onTap: () {

      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Hero(
                  tag: imagePath,
                  child: Image(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                    height: 75.0,
                    width: 75.0,
                  ),
                ),
                SizedBox(width: 10.0,),
                Column(
                  children: <Widget>[
                    Text(
                      foodName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                        fontFamily: 'Montserrat'
                      ),
                    ),
                    Text(
                      foodName,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 15.0,
                          fontFamily: 'Montserrat'
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
            color: Colors.black,
          ),
        ],
      ),
    ),
  );
}