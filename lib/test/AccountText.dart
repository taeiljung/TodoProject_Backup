import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/** 로그인 화면의 비밀번호 분실 Part */
class RememberPasswordSection extends StatelessWidget {
  final String remeberText;
  const RememberPasswordSection({
    Key? key,
    required this.remeberText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('비밀번호 분실'),
      child: Row(
        children: [
          Text(
            this.remeberText,
            style: GoogleFonts.notoSans(
              fontSize: 13.0,
              color: const Color(0xFF21899C),
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.right,
          ),
        ],
      ),
    );
  }
}
