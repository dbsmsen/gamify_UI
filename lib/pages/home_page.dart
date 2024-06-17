import "package:flutter/material.dart";
import "../data.dart";
import '../widgets/scrollable_games_widget.dart';


class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState(){
    return _HomePageState();
  }
}
class _HomePageState extends State<HomePage>{

  var _deviceHeight;
  var _deviceWidth;

  var _selectedGame;

  @override
  void initState(){
    super.initState();
    _selectedGame = 0;
  }

  @override
  Widget build(BuildContext context){
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(children: <Widget>[
          _featuredGameWidget(),
          _gradientBoxWidget(),
          _topLayerWidget(),
        ],
        ),
    );
  }

  //Featured Games Background
  Widget _featuredGameWidget(){
    return SizedBox(
      height: _deviceHeight * 0.50,
      width: _deviceWidth,
      child: PageView(
        onPageChanged: (_index){
          setState(() {
            _selectedGame = _index;
          });
        },
        scrollDirection: Axis.horizontal,
        children: featuredGames.map((_game){
          return Container(
            decoration: BoxDecoration(
              image : DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(_game.coverImage.url),
              ),
            ),
          );
        }).toList(),
      )
    );
  }

  //Background Gradient
  Widget _gradientBoxWidget(){
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height:_deviceHeight * 0.80,
        width: _deviceWidth,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(35, 45, 59, 1.0),
                Colors.transparent,
              ],
              stops: [0.65, 1.0],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
        ),
      ),
    );
  }

  //Top Utilitis Bar
  Widget _topLayerWidget(){
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: _deviceWidth * 0.05,
        vertical: _deviceHeight * 0.005
      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _topBarWidget(),
            SizedBox(height: _deviceHeight * 0.13),
            _featuredGameInfoWidget(),
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: _deviceHeight * 0.01),
              child: ScrollableGamesWidget(
                _deviceHeight * 0.24, _deviceWidth, true, games),
            ),
            _featuredGameBannerWidget(),
            ScrollableGamesWidget(
                _deviceHeight * 0.22, _deviceWidth, false, games2)
          ],
        ),
    );
  }
  Widget _topBarWidget(){
    return SizedBox(
      height: _deviceHeight * 0.13,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
          Row(
            children: <Widget>[
            Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(
              width: _deviceWidth * 0.03,
            ),
            Icon(
              Icons.notifications_none,
              color: Colors.white,
              size: 30,
            )
            ],
          )
        ],
      ),
    );
  }

  Widget _featuredGameInfoWidget(){
    return SizedBox(
      height: _deviceHeight * 0.12,
      width: _deviceWidth,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            featuredGames[_selectedGame].title,
            maxLines: 2,
            style: TextStyle(
                color: Colors.white,
                fontSize: _deviceHeight * 0.035,
            ),
          ),
          SizedBox(height: _deviceHeight * 0.000001),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: featuredGames.map((_game){
              bool _isActive = _game.title == featuredGames[_selectedGame].title;
              double circleRadius = _deviceHeight * 0.004;
              return Container(
                margin: EdgeInsets.only(right: _deviceWidth * 0.015),
                height: circleRadius * 2,
                width: circleRadius * 2,
                decoration: BoxDecoration(
                  color: _isActive ? Colors.green : Colors.grey,
                  borderRadius: BorderRadius.circular(100),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
  Widget _featuredGameBannerWidget(){
    return Container(height: _deviceHeight * 0.13,
    width: _deviceWidth,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(gameBanner[0].coverImage.url),
      ),
    ),
    );
  }
}