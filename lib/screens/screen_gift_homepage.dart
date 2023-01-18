import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:test_gift_dkim230117/screens/screen_itemhome.dart';
//import 'package:test_start_dkim230109/firestore_page.dart';

//import 'package:test_bbs0_dkim221229/write.dart';

class GiftHomePage extends StatefulWidget {
//  const BBSHomePage({super.key key, required this.title});
//  const BBSHomePage({super.key, this.title});
//  final String title;

  @override
  State<GiftHomePage> createState() => _GiftHomePageState();
}

class _GiftHomePageState extends State<GiftHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      drawer: Drawer(
//        child:ListView(
//          padding: EdgeInsets.zero,
//          children: <Widget>[
//          ],
//        ),
//      ),
//      appBar: AppBar(
 //       centerTitle: true,
//        title: Text('Wow! send a gift to your country.'),
//          title: Image.asset('assets/images/04.png',fit:BoxFit.contain,
//          height: 24,
//          ),
 //     ),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/02.jpg',
                fit: BoxFit.contain,
                height: 26,
              ),
              Container(
                  padding: const EdgeInsets.all(4.0),
                  child: Text('  Wow! Gift to your country'))
            ],

          ),
        ),
      body:
//      Center(

//        child: Container(
          Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.fromLTRB(02, 10, 02, 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset('assets/images/vn001.jpeg'),
              SizedBox(
                height: 16,
              ),

              Container(
                height: 245,
                width: 380,
                padding: EdgeInsets.all(10),

                child:
                Text('Important Notice , Thông báo quan trọng'),
                color: Colors.indigo.shade100,
              ),
            ],
          ),
        ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Navigator.push(
//              context, CupertinoPageRoute(builder: (context) => WritePage()));
       //       context, CupertinoPageRoute(builder: (context) => FireStorePage()));
                context, CupertinoPageRoute(builder: (context) => ItemScreen()));
              },
        //       tooltip: '메모를 추가하려면 클릭하세요',
        label: Text('Start , bắt đầu',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color:Colors.white)),
        icon: Icon(Icons.add),
      ),
    );
  }
}