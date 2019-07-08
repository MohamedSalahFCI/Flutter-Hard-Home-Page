import 'package:flutter/material.dart';
import 'package:hard_home_page_14_6/customshapeclipper.dart';

Color firstColor = Color(0xFFF47D15);
Color secondColor = Color(0xFFEF772C);

List<String> locations = ['Boston (805)', 'New Yourk City (JFK)'];

const TextStyle dropDownLabelStyle =
    TextStyle(color: Colors.white, fontSize: 16.0);
const TextStyle dropDownMenuItemStyle =
    TextStyle(color: Colors.black, fontSize: 18.0);

class SmartHome extends StatefulWidget {
  @override
  _SmartHomeState createState() => _SmartHomeState();
}

class _SmartHomeState extends State<SmartHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //l screen kolha hatkon fe column wel column dh mat2sam 2 container wa7d fo2 w wa7d t7t
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[HomeScreenTopPart(), HomeScreenBottomPart()],
          ),
        ],
      ),
    );
  }
}

class HomeScreenTopPart extends StatefulWidget {
  @override
  _HomeScreenTopPartState createState() => _HomeScreenTopPartState();
}

class _HomeScreenTopPartState extends State<HomeScreenTopPart> {
  var selectedLocationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 400.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [firstColor, secondColor])),
            child: Column(
              children: <Widget>[
                //bnsta5dam l sized box 3shan nanaxaal l 7aga
                SizedBox(
                  height: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      PopupMenuButton(
                        onSelected: (index) {
                          setState(() {
                            selectedLocationIndex = index;
                          });
                        },
                        child: Row(
                          children: <Widget>[
                            Text(locations[selectedLocationIndex],
                                style: dropDownLabelStyle),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            )
                          ],
                        ),
                        itemBuilder: (BuildContext context) =>
                            <PopupMenuItem<int>>[
                              PopupMenuItem(
                                child: Text(
                                  locations[0],
                                  style: dropDownMenuItemStyle,
                                ),
                                value: 0,
                              ),
                              PopupMenuItem(
                                child: Text(
                                  locations[1],
                                  style: dropDownMenuItemStyle,
                                ),
                                value: 1,
                              ),
                            ],
                      ),
                      //hna l spacer a7san mn l sizedBox fel row
                      //hna hya feha 7gat zy l Expand kda aly hya bta5od flex
                      Spacer(),
                      //SizedBox(width: 150,),
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'where would\nyou wantto go..?',
                  style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    child: TextField(
                      controller: TextEditingController(
                        text: locations[1],
                      ),
                      style: dropDownMenuItemStyle,
                      decoration: InputDecoration(
                          //3shan ashel l 5a aly ta7t l 7aga
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 14.0),
                          suffixIcon: Material(
                            elevation: 2.0,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            child: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.white30),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 5, 0.0, 5),
                            child: Icon(
                              Icons.flight_takeoff,
                              size: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 5, 20, 5),
                            child: Text(
                              "Flight",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 14.0),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.hotel,
                          size: 20.0,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          "Hotel",
                          style: TextStyle(color: Colors.white, fontSize: 14.0),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        // Container(
        //   child: Column(
        //     children: <Widget>[
        //       SizedBox(
        //         height: 500,
        //       ),
        //       Container(
        //         child: Text("momo"),
        //       )
        //     ],
        //   ),
        // )
      ],
    );
  }
}

class ChoiceChip extends StatefulWidget {
  final IconData icon;
  final String text;

  ChoiceChip({this.icon, this.text});
  @override
  _ChoiceChipState createState() => _ChoiceChipState();
}

class _ChoiceChipState extends State<ChoiceChip> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Icon(
          widget.icon,
          size: 20.0,
          color: Colors.white,
        ),
        SizedBox(
          width: 4.0,
        ),
        Text(
          widget.text,
          style: TextStyle(color: Colors.white, fontSize: 14.0),
        )
      ],
    );
  }
}

class HomeScreenBottomPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Text(
                "Currently Watched Item",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
              child: Text(
                "View All (12)",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Container(
          height: 210.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                height: 210.0,
                width: 100.0,
              ),
              Container(
                height: 210.0,
                width: 100.0,
              ),
              Container(
                height: 210.0,
                width: 100.0,
              ),
              Container(
                height: 210.0,
                width: 100.0,
              ),
            ],
          ),
        )
      ],
    );
  }
}

List<CityCards> cityCards = [CityCards()];

class CityCards extends StatelessWidget {
  final String imagePath, cityName, monthYear, discount, oldPrice, newPrice;
  CityCards(
      {this.imagePath,
      this.cityName,
      this.monthYear,
      this.discount,
      this.oldPrice,
      this.newPrice});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[Container()],
    );
  }
}
