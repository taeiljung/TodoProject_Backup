import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/** 로그인 화면의 비밀번호 분실 Part */
class RememberPwdText extends StatelessWidget {
  final String remeberText;
  const RememberPwdText({
    Key? key,
    required this.remeberText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      /** onTap에서 비밀번호 찾기 페이지로 이동하도록 Link. */
      onTap: () => print('비밀번호 분실'),
      child: Row(
        children: [
          Text(
            this.remeberText,
            style: GoogleFonts.notoSans(
              fontSize: 13.0,
              color: Color.fromARGB(255, 78, 183, 245),
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.right,
          ),
        ],
      ),
    );
  }
}
