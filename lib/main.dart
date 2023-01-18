import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:test_gift_dkim230117/screens/screen_gift_homepage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final List<String> imagesList = [
'https://kdukim0125.cafe24.com/event/003.png'
'https://kdukim0125.cafe24.com/event/006.png'
'https://kdukim0125.cafe24.com/event/007.png'
];

final List<String> titles = [
'2023년, 크게 성장하는 파워콜!',
'인생 즐겁게 살아야...',
'선물...주는 기쁨, 받는 기쁨',
];


void main() {
  runApp(const GMyApp());
}

class GMyApp extends StatelessWidget {
  const GMyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
//      home: Demo(),
        initialRoute: '/',
        routes: {
          '/': (context) => Demo(),
          '/first': (context) => FirstScreen(),
          '/second': (context) => SecondScreen(),
          '/third': (context) => GiftHomePage(),
        });
  }
}

class Demo extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Demo> {
  int activeIndex = 0;
  @override

  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 345.0,
      child: CarouselSlider(
        options: CarouselOptions(
          height: 240,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 2),
          onPageChanged: (index, reason) =>
              setState(() => activeIndex = index),
        ),

        items: [
          {
            "url": 'https://kdukim0125.cafe24.com/event/003.png',
            "routeName": "/first"
          },
          {
            "url": 'https://kdukim0125.cafe24.com/event/006.png',
            "routeName": "/second"
          },
          {
            "url": 'https://kdukim0125.cafe24.com/event/007.png',
            "routeName": "/third"
          },

        ].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(color: Colors.amber),
                  child: GestureDetector(
                      child: Image.network(i["url"]!, fit: BoxFit.fill),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          i["routeName"]!,
                          arguments: 1,
                        );
                      }));
            },
          );
        }).toList(),
      ),
      //               SizedBox(height: 50),
    );

         return

           Scaffold(
             body: new Column(
               children: <Widget>[
                image_carousel,
              ],
            ),
          );

  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: imagesList.length,
    effect: SlideEffect(
      dotWidth: 10,
      dotHeight: 10,
      activeDotColor: Colors.indigo,
      dotColor: Colors.black12,
    ),
  );

}

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
//    final Map args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
//        body: Image.network(args["url"], width: double.infinity)
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
//    final Map args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
//        body: Image.network(args["url"], width: double.infinity)
    );
  }
}

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
//    final Map args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen'),
      ),
//        body: Image.network(args["url"], width: double.infinity)
    );
  }
}


