import 'package:flutter/material.dart';

class CustomCarousel extends StatefulWidget {
  final List<Widget> cards;
  final double width;
  final double height;
  final bool navigationDots;
  final bool showMultipleItems;
  final double gap; // Novo parâmetro

  CustomCarousel({
    Key? key,
    required this.cards,
    this.width = 150,
    this.height = 150,
    this.navigationDots = true,
    this.showMultipleItems = false,
    this.gap = 0, // Valor padrão
  }) : super(key: key);

  @override
  _CustomCarouselState createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  final PageController _pageController = PageController(initialPage: 0);
  int _activePage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: widget.width == 150 ? double.infinity : widget.width,
          height: widget.height == 150 ? 150 : widget.height,
          child: widget.showMultipleItems
              ? SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      widget.cards.length,
                      (index) => Padding(
                        padding: EdgeInsets.only(
                          left: index == 0 ? 0 : widget.gap / 2,
                          right: index == widget.cards.length - 1
                              ? 0
                              : widget.gap / 2,
                        ),
                        child: widget.cards[index],
                      ),
                    ),
                  ),
                )
              : PageView.builder(
                  controller: _pageController,
                  itemCount: widget.cards.length,
                  onPageChanged: (value) {
                    setState(() {
                      _activePage = value;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? 0 : widget.gap / 2,
                        right: index == widget.cards.length - 1
                            ? 0
                            : widget.gap / 2,
                      ),
                      child: widget.cards[index],
                    );
                  },
                ),
        ),
        if (widget.navigationDots && !widget.showMultipleItems)
          Container(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(
                widget.cards.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: InkWell(
                    onTap: () {
                      _pageController.animateToPage(index,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn);
                    },
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor:
                          _activePage == index ? Colors.redAccent : Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          )
      ],
    );
  }
}
