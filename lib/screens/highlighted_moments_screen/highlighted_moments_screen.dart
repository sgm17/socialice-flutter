import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HighlightedMomentsScreen extends StatefulWidget {
  const HighlightedMomentsScreen({Key? key}) : super(key: key);

  @override
  State<HighlightedMomentsScreen> createState() =>
      _HighlightedMomentsScreenState();
}

class _HighlightedMomentsScreenState extends State<HighlightedMomentsScreen> {
  final List<String> pictures = [
    "assets/images/highlighted_picture.png",
    "assets/images/highlighted_picture.png",
    "assets/images/highlighted_picture.png",
    "assets/images/highlighted_picture.png",
    "assets/images/highlighted_picture.png",
  ];

  int _currentPictureIndex = 0;

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPictureIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 13.7,
                          height: 13.7,
                          child: SizedBox(
                            width: 13.7,
                            height: 13.7,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_39_x2.svg',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '${_currentPictureIndex + 1} de ${pictures.length}',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 23,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 14.1,
                          height: 14.1,
                          child: SizedBox(
                            width: 14.1,
                            height: 14.1,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_22_x2.svg',
                            ),
                          ),
                        ),
                        Container(
                          width: 19,
                          height: 21.1,
                          child: SizedBox(
                            width: 19,
                            height: 21.1,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_1_x2.svg',
                            ),
                          ),
                        ),
                        Container(
                          width: 3.3,
                          height: 15.8,
                          child: SizedBox(
                            width: 3.3,
                            height: 15.8,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_2_x2.svg',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 32.0),
                child: PageView(
                    controller: _pageController,
                    onPageChanged: (value) {
                      setState(() {
                        _currentPictureIndex = value;
                      });
                    },
                    children: [
                      for (int i = 0; i < pictures.length; i++)
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: AssetImage(
                                'assets/images/highlighted_picture.png',
                              ),
                            ),
                          ),
                        ),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Added by Laura Nardella 3 mar',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF000000),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 9.9,
                        height: 11.2,
                        child: SizedBox(
                          width: 9.9,
                          height: 11.2,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_x2.svg',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Party Night at SOHO: Make New Friends',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 8.5,
                    height: 6.2,
                    child: SizedBox(
                      width: 8.5,
                      height: 6.2,
                      child: SvgPicture.asset(
                        'assets/vectors/vector_27_x2.svg',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
