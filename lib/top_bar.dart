import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {

  const TopBar({super.key});

  static final _iconWidget = Image.asset("assets/icons/ic_pokedex.png");

  static const _titleWidget = Text(
    "Pokédex",
    style: TextStyle(
        color: AppColors.dark_gray,
        fontSize: 24,
        fontWeight: FontWeight.w700
    ),
  );

  static const _sortWidget = Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        "#",
        style: TextStyle(
            color: AppColors.dark_gray,
            fontSize: 10,
            fontWeight: FontWeight.w500
        ),
      ),
      Icon(
        Icons.arrow_downward,
        size: 16,
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        width: 328,
        height: 32,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  _iconWidget,
                  SizedBox(width: 16),
                  _titleWidget
                ],
              ),
              _sortWidget
            ],
          ),
        ),
      );
  }
}

class DetailTopBar extends StatelessWidget {

  final String name;
  final String number;


  DetailTopBar({
    super.key,
    required this.name,
    required this.number
  });

  late final _titleWidget = Text(
    name,
    style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.w700
    ),
  );

  late final _numberWidget = Text(
    "#$number",
    style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 12
    ),
  );


  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      SizedBox(
        width: 312,
        height: 32,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                        Icons.arrow_back,
                        color: Colors.white
                    ),
                  ),
                  SizedBox(width: 16),
                  _titleWidget
                ],
              ),
              _numberWidget
            ],
          ),
        ),
      ),
    );
  }
}

class AppColors {
  static const Color dark_gray = Color(0xFF212121);
  static const Color medium_gray = Color(0xFF666666);
  static const Color light_gray = Color(0xFFE0E0E0);
}
