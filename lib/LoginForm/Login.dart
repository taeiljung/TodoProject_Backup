/* 필요 Package & Library Import */
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
/* 파일 끼리 Import */
import '../CustomWidget/TextUI.dart';
import '../SignUp/SignUpPage.dart';
import '../CalendarForm/CalendarPage.dart';
import '../CustomWidget/Button.dart';
import '../test/TextBox.dart';
import '../CalendarForm/CalendarPage.dart';

/* 로그인 폼 상태 관리 & 로그인 폼 렌더링 상태 위젯 클래스 정의 */
class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => LoginState();
}

/* Firebase 연동 Class */
class LoginState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String _errorMessage = '';

  Future<void> _login(BuildContext context) async {
    String email = _emailController.text;
    String password = _passwordController.text;
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      print('Logged in user: ${userCredential.user}');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TodoListPage()),
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        _errorMessage = e.message!;
      });
    }
  }

/*  비동기 메소드 호출 다른 위젯으로 이동하기 위한 기능임.
*   회원가입 버튼 클릭 시 회원가입 위젯으로 넘어가기 위해 필요한 정보들을
    전달하기 위한 기능 제공. */
  Future<void> _goSignUpPage() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignUpPage()),
    );
  }

/*  MediaQuery => 현재 디바이스 크기에 따른 화면 크기 지정(동적 웹)
    reizeToAvoidBottomINset => 안드로이드 & iOS에서 키보드 작동 시 화면 조정 False 
    S*/
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 25, 23, 32),
      // body: SafeArea(
      //   child: Align(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[buildCard(size)],
      //     ),
      //   ),
      // ),
      // body: ListView(
      //   shrinkWrap: true,
      //   children: [
      //     buildCard(size),
      //   ],
      // ),
      body: buildCard(size),
    );
  }

  Widget buildCard(Size size) {
    return Container(
      alignment: Alignment.center,
      /** 미디어 쿼리 이용해서 디바이스 크기에 따른 뷰 동적 변경. */
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).padding.left + 40,
        right: MediaQuery.of(context).padding.right + 40,
        top: MediaQuery.of(context).padding.top + 90,
      ),
      width: size.width,
      height: size.height,
      color: Color.fromARGB(255, 25, 23, 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // /* 메인 텍스트 Part */
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerLeft,
              child: mainText(30), // 크기 30의 메인 텍스트
            ),
          ),

          /* Email & Password 파트 */
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginTextBox(
                  controller: _emailController,
                  text: "Phone, E-mail, or username",
                  height: 65,
                  textInputType: TextInputType.emailAddress,
                  obscureText: false,
                  function: _login,
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                LoginTextBox(
                  controller: _passwordController,
                  text: "password",
                  height: 65,
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  function: _login,
                ),
                // RememberPasswordSection(remeberText: "비밀번호를 잊으셨나요 ?"),
              ],
            ),
          ),

          //sign in button, 'don't have account' text and social button here
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginButton(
                  height: 65,
                  ButtonText: '로그인',
                  function: (_) => _login(context),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),

                //don't have account text here
                NoAccoutText(printText: "또는 소셜 로그인"),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    //google button
                    ImageButton(
                      backgroundColor: Colors.white,
                      height: size.height / 13,
                      assetImage: AssetImage('Imgs/google.png'),
                      // text: '카카오 로그인',
                      width: size.width / 4.2,
                    ),

                    //kakao button
                    ImageButton(
                      backgroundColor: Colors.yellow,
                      height: size.height / 13,
                      assetImage: const AssetImage('Imgs/kakao.png'),
                      // text: '카카오 로그인',
                      width: size.width / 4.2,
                    ),

                    //kakao button
                    ImageButton(
                      backgroundColor: Colors.yellow,
                      height: size.height / 13,
                      assetImage: const AssetImage('Imgs/kakao.png'),
                      // text: '카카오 로그인',
                      width: size.width / 4.2,
                    ),
                  ],
                ),
                //sign in with google & facebook button here
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget mainText(double fontSize) {
    return Text.rich(
      TextSpan(
        style: GoogleFonts.notoSans(
          fontSize: fontSize,
          color: Color.fromARGB(255, 255, 255, 255),
          letterSpacing: 2.000000061035156,
        ),
        children: const [
          TextSpan(
            text: 'QuadO\n테스트 입니다.',
            style: TextStyle(
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }

  Widget emailTextField(Size size) {
    return SizedBox(
      height: size.height / 12,
      child: TextField(
        textInputAction: TextInputAction.go,
        onSubmitted: (_) async => await _login(context),
        controller: _emailController,
        style: GoogleFonts.inter(
          fontSize: 18.0,
          color: const Color(0xFF151624),
        ),
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        cursorColor: const Color(0xFF151624),
        decoration: InputDecoration(
          hintText: '이메일을 입력하세요.',
          hintStyle: GoogleFonts.inter(
            fontSize: 16.0,
            color: const Color(0xFF151624).withOpacity(0.5),
          ),
          fillColor: _emailController.text.isNotEmpty
              ? Colors.transparent
              : const Color.fromRGBO(248, 247, 251, 1),
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide(
                color: _emailController.text.isEmpty
                    ? Colors.transparent
                    : const Color.fromRGBO(44, 185, 176, 1),
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: const BorderSide(
                color: Color.fromRGBO(44, 185, 176, 1),
              )),
          prefixIcon: Icon(
            Icons.mail_outline_rounded,
            color: _emailController.text.isEmpty
                ? const Color(0xFF151624).withOpacity(0.5)
                : const Color.fromRGBO(44, 185, 176, 1),
            size: 16,
          ),
          suffix: Container(
            alignment: Alignment.center,
            width: 24.0,
            height: 24.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: const Color.fromRGBO(44, 185, 176, 1),
            ),
            child: _emailController.text.isEmpty
                ? const Center()
                : const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 13,
                  ),
          ),
        ),
      ),
    );
  }

  Widget passwordTextField(Size size) {
    return SizedBox(
      height: size.height / 12,
      child: TextField(
        textInputAction: TextInputAction.go,
        onSubmitted: (_) async => await _login(context),
        controller: _passwordController,
        style: GoogleFonts.inter(
          fontSize: 18.0,
          color: const Color(0xFF151624),
        ),
        maxLines: 1,
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        cursorColor: const Color(0xFF151624),
        decoration: InputDecoration(
          hintText: '비밀번호를 입력하세요.',
          hintStyle: GoogleFonts.inter(
            fontSize: 16.0,
            color: const Color(0xFF151624).withOpacity(0.5),
          ),
          fillColor: _passwordController.text.isNotEmpty
              ? Colors.transparent
              : const Color.fromRGBO(248, 247, 251, 1),
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide(
                color: _passwordController.text.isEmpty
                    ? Colors.transparent
                    : const Color.fromRGBO(44, 185, 176, 1),
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: const BorderSide(
                color: Color.fromRGBO(44, 185, 176, 1),
              )),
          prefixIcon: Icon(
            Icons.lock_outline_rounded,
            color: _passwordController.text.isEmpty
                ? const Color(0xFF151624).withOpacity(0.5)
                : const Color.fromRGBO(44, 185, 176, 1),
            size: 16,
          ),
          suffix: Container(
            alignment: Alignment.center,
            width: 24.0,
            height: 24.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: const Color.fromRGBO(44, 185, 176, 1),
            ),
            child: _passwordController.text.isEmpty
                ? const Center()
                : const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 13,
                  ),
          ),
        ),
      ),
    );
  }
}
