import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final double height;
  final String text;

  const CustomButton({
    Key? key,
    required this.height,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){}, // 기능
      child:Container(
        alignment: Alignment.center,
        height: this.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color.fromARGB(255,255,255,255),
        ),
        child: Text(
          this.text,
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

class LoginTextBox extends StatelessWidget {
  final double height;
  final String text;
  final TextEditingController controller;
  final TextInputType textInputType;
  final bool obscureText;
  final void Function(BuildContext context) function;

  const LoginTextBox({
    Key? key,
    required this.text,
    required this.height,
    required this.controller,
    required this.textInputType,
    required this.obscureText,
    required this.function,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      child: TextField(
        textInputAction: TextInputAction.go,
        onSubmitted: (_) => function(context),
        expands: false,
        keyboardType: this.textInputType,
        controller: this.controller,
        maxLines: 1,
        minLines: null,
        obscureText: this.obscureText,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            // contentPadding: EdgeInsets.symmetric(vertical: this.height), // 커지는 것처럼 보이기만 한다...ㅠㅠ
            hintText: this.text,
            hintStyle: TextStyle(
              color: Colors.white30,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            )),
        style: GoogleFonts.notoSans(
            textStyle: TextStyle(
          color: Colors.white,
          // textBaseline: Textbaseline.
        )),
      ),
    );
  }
}

class NoAccoutText extends StatelessWidget {
  final String printText;

  const NoAccoutText({
    Key? key,
    required this.printText,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Expanded(
            flex: 2,
            child: Divider(
              color: Color(0xFF969AA8),
            )),
        Expanded(
          flex: 3,
          child: Text(
            this.printText,
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSans(
              fontSize: 12.0,
              color: const Color(0xFF969AA8),
              fontWeight: FontWeight.w500,
              height: 1.67,
            ),
          ),
        ),
        const Expanded(
            flex: 2,
            child: Divider(
              color: Color(0xFF969AA8),
            )),
      ],
    );
  }
}
