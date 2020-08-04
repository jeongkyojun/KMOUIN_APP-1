import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              width: double.infinity,
              height: 409,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(1, 1.0066717739762931),
                  end: Alignment(-0.3834225260416666, -0.3105676773146455),
                  colors: [
                    const Color(0xff2862c1),
                    const Color(0xff358acb),
                    const Color(0xff46d4ff),
                    const Color(0xff46d4ff),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              "안녕하세요!",
                              style: const TextStyle(
                                  color: const Color(0xfff1f1f1),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "NotoSansKR",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 32.0),
                              textAlign: TextAlign.left,
                            ),
                            Container(
                              height: 45.0,
                              width: 45.0,
                              child: Image.asset(
                                'images/copy2@3x.png',
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "해대인에 오신걸 환영합니다",
                          style: const TextStyle(
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w300,
                              fontFamily: "NotoSansKR",
                              fontStyle: FontStyle.normal,
                              fontSize: 22.0),
                          textAlign: TextAlign.left,
                        ),
                        // Rectangle Copy 11
                        Container(
                          padding: EdgeInsets.all(10.0),
                          width: 324,
                          height: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(23)),
                            border: Border.all(
                                color: const Color(0xffffffff), width: 2),
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Icon(
                              Icons.search,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ), //상단 타이틀 및 검색바 부분
                CardRow(),
                CardRow(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardRow extends StatelessWidget {
  const CardRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // Rectangle Copy 2
        CategoryCards(),
        CategoryCards(),
      ],
    );
  }
}

class CategoryCards extends StatelessWidget {
  const CategoryCards({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7.5),
      width: 160,
      height: 160,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left:10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: const Color(0x80cacaca),
            offset: Offset(0, -1),
            blurRadius: 16,
            spreadRadius: 2,
          ),
        ],
        color: const Color(0xffffffff),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 10.0,),
            width: 58.0,
            height: 58.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(58.0),
              gradient: LinearGradient(
                begin: Alignment(
                  0.20662397904829533,
                  0,
                ),
                end: Alignment(
                  0.8835055264559655,
                  1.0000000000000002,
                ),
                colors: [
                  const Color(0xff8b25ac),
                  const Color(0xff6159de),
                ],
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Image.asset(
                'images/bus@3x.png',
              ),
            ),
          ),
          // 버스 정보
          Text(
            "버스 정보",
            style: const TextStyle(
              color: const Color(0xff131415),
              fontWeight: FontWeight.w500,
              fontFamily: "NotoSansKR",
              fontStyle: FontStyle.normal,
              fontSize: 16.0,
            ),
            textAlign: TextAlign.center,
          ),
          // 실시간 위치를 알 수 있어요
          Text(
            "실시간 위치를 알 수 있어요",
            style: const TextStyle(
              color: const Color(0xff5f605f),
              fontWeight: FontWeight.w500,
              fontFamily: "NotoSansKR",
              fontStyle: FontStyle.normal,
              fontSize: 12.0,
            ),
            textAlign: TextAlign.center,
          ),
          // #셔틀 버스
          Text(
            "#셔틀 버스 #통근버스 #190번 버스",
            style: const TextStyle(
              color: const Color(0xff878787),
              fontWeight: FontWeight.w500,
              fontFamily: "NotoSansKR",
              fontStyle: FontStyle.normal,
              fontSize: 9.0,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}