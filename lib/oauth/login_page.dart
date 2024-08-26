import 'package:flutter/material.dart';
import 'kakao_oauth_service.dart';
import 'naver_oauth_service.dart';

class LoginPage extends StatelessWidget {
  final KakaoOAuthService _kakaoService = KakaoOAuthService();
  final NaverOAuthService _naverService = NaverOAuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Kakao 로그인 버튼
            InkWell(
              onTap: () async {
                await _kakaoService.kakaoLogin();
              },
              child: Container( // 크기 조절용
                width: 400,
                height: 50,
                decoration: BoxDecoration(
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10), // 이미지 모서리 둥글게
                  child: Image.asset(
                    'assets/images/kakao_login_medium_wide.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Naver 로그인 버튼
            InkWell(
              onTap: () async {
                await _naverService.login(context);
              },
              child: Container( // 크기 조절용
                width: 400,
                height: 50,
                decoration: BoxDecoration(
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10), // 이미지 모서리 둥글게
                  child: Image.asset(
                    'assets/images/btnG_완성형.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}