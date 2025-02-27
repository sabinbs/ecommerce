import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeScreenController extends GetxController {
  List<Training> items = [
    Training(
      '4.89',
      '(216)',
      'LG전자',
      '편리성',
      Color(0xffFFD233),
      'LG전자 스탠바이미 27ART10AKPL (스탠',
      'assets/images/listimage1.png',
      '화면을 이동할 수 있고 전환도 편리하다는 점이 제일 마음에 들었어요. 배송도 빠르고 친절하게 받을 수 있어서 좋았습니다.',
      '스탠바이미는 사랑입니다!️',
    ),
    Training(
      '4.36',
      '(136)',
      'LG전자',
      '고화질',
      Color(0xffA0A0A0),
      'LG전자 울트라HD 75UP8300KNA (스탠드)',
      'assets/images/listimage2.png',
      '화면 잘 나오고... 리모컨 기능 좋습니다.',
      '넷플 아마존 등 버튼하나로 바로 접속 되고디스플레이는 액정문제 없어보이고소리는 살짝 약간 감이 있으나 ^^; 시끄러울까봐 그냥 블루투스 헤드폰 구매 예정이라 문제는 없네요. 아주 만족입니다!!',
    ),
    Training(
      '3.98',
      '(98)',
      '라익미',
      '가성비',
      Color(0xffC8903D),
      '라익미 스마트 DS4001L NETRANGE (스탠드)GX30K WIN10 (SSD 256GB)',
      'assets/images/listimage3.jpeg',
      '반응속도 및 화질이나 여러면에서도 부족함을 느끼기에는 커녕 이정도에 이 정도 성능이면 차고 넘칠만 합니다',
      '중소기업TV 라익미 제품을 사용해보았는데 뛰어난 가성비와 더불어 OTT 서비스에 오픈 브라우저 까지 너무 마음에 들게끔 기능들을 사용 가능했고',
    ),
  ];

  List<Horizontal> horizitems = [
    Horizontal(
        'assets/images/name1.jpeg',
      'Name01'
    ),
    Horizontal(
        'assets/images/name2.jpeg',
        'Name02'
    ),
    Horizontal(
        'assets/images/name3.jpeg',
        'Name03'
    ),
    Horizontal(
        'assets/images/name4.jpeg',
        'Name04'
    ),
    Horizontal(
        'assets/images/name5.jpeg',
        'Name05'
    ),
    Horizontal(
        'assets/images/name6.jpeg',
        'Name06'
    ),
    Horizontal(
        'assets/images/name7.jpeg',
        'Name07'
    ),
    Horizontal(
        'assets/images/name8.jpeg',
        'Name08'
    ),
    Horizontal(
        'assets/images/name9.jpeg',
        'Name09'
    ),
    Horizontal(
        'assets/images/name10.jpeg',
        'Name10'
    ),
  ];

}

class Training {
  String starRate;
  String starCount;
  String location;
  String status;
  Color statusColor;
  String title;
  String speakerImageUrl;
  String speakerName;
  String speakerTitle;

  Training(
      this.starRate,
      this.starCount,
      this.location,
      this.status,
      this.statusColor,
      this.title,
      this.speakerImageUrl,
      this.speakerName,
      this.speakerTitle);
}

class Horizontal {
  String image;
  String name;


  Horizontal(
      this.image,
      this.name,
     );
}
