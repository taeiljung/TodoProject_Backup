import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final double height;
  final String ButtonText;

  const CustomButton({
    Key? key,
    required this.height,
    required this.ButtonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {}, // 기능
      child: Container(
        alignment: Alignment.center,
        height: this.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Text(
          this.ButtonText,
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

/** 로그인 버튼 따로 구현. */
class LoginButton extends StatelessWidget {
  final double height;
  final String ButtonText;
  final void Function(BuildContext context) function;

  const LoginButton({
    Key? key,
    required this.height,
    required this.ButtonText,
    required this.function,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => this.function(context), // 기능
      child: Container(
        alignment: Alignment.center,
        height: this.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Text(
          this.ButtonText,
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

//이미지 버튼
class ImageButton extends StatelessWidget {
  final double height;
  final double width;
  final AssetImage assetImage;
  // final String text;
  final Color backgroundColor;

  const ImageButton({
    Key? key,
    required this.height,
    required this.width,
    required this.assetImage,
    // required this.text,
    required this.backgroundColor,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {}, // 기능
      child: Container(
        alignment: Alignment.center,
        height: this.height,
        width: this.width,
        decoration: BoxDecoration(
          color: this.backgroundColor,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            width: 1.0,
            color: Colors.white,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              width: 24.0,
              height: 24.0,
              color: Colors.white.withOpacity(0.0),
              child: Image(
                image: this.assetImage,
              ),
            ),
            // const SizedBox(
            //   width: 16,
            // ),
            // Text(
            //   this.text,
            //   style: GoogleFonts.notoSans(
            //     fontWeight: FontWeight.bold,
            //     fontSize: 20,
            //     color: Colors.black,
            //   ),
            //   textAlign: TextAlign.center,
            // ),
          ],
        ),
      ),
    );
  }
}
