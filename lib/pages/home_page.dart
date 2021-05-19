import 'package:flutter/material.dart';
import 'package:flutter_webrtc_quiz_app/pages/meeting_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // size settings - MediaQuery로 상대적 사이즈로 적용
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('ydentity quiz application'),
        backgroundColor: Colors.deepPurple,
        leading: Container(),
      ),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.02,
          ),
          Center(
            child: Image(
              image: AssetImage('assets/images/ydentity-logo.jpg'),
              height: height * 0.3,
              width: width * 0.3,
              // image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQWthuOqxSy0aIGfvUeFgcCifExVdsQ4HIacg&usqp=CAU'),
            ),
          ),
          Text(
            '와이덴티티 퀴즈 앱',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30.0,
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Text('와이덴티티 퀴즈 앱 과제입니다'),
          _buildStep(width, '1. 퀴즈방의 이름을 설정해주세요'),
          _buildStep(width, '2. Web URL을 생성해 상대방을 초대해주세요.'),
          _buildStep(width, '3. 채팅에서 퀴즈에 대한 답변을 선택하세요'),
          Padding(
            padding: EdgeInsets.all(width * 0.01),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MeetingPage(),
              ));
            },
            child: Container(
              width: width * 0.65,
              alignment: Alignment.center,
              padding: EdgeInsets.all(width * 0.015),
              child: Text(
                "퀴즈 풀기!",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.015,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Color(0xFF666666)),
                color: Colors.deepPurple,
              ),
            ),
          ),
          // 화상채팅 앱으로 라우팅
        ],
      ),
    ));
  }

  Widget _buildStep(double width, String title) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        width * 0.01,
        width * 0.01,
        width * 0.01,
        width * 0.01,
      ),
      child: Center(
        child: Row(
          children: [
            Icon(
              Icons.check_box,
              size: width * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: width * 0.024,
              ),
            ),
            Text(
              title,
              style: TextStyle(fontSize: width * 0.02),
            )
          ],
        ),
      ),
    );
  }
}
