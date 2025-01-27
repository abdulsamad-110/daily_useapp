import 'package:flutter/material.dart';

class CarouselViewWidget extends StatelessWidget {
  final Axis scrollDirection;

  const CarouselViewWidget({
    super.key,
    this.scrollDirection = Axis.horizontal,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(12.0),
          child: SizedBox(
            height: 200,
            child: CarouselView(
              itemExtent: MediaQuery.sizeOf(context).width - 32,
              ///// Conditional scroll direction
              scrollDirection: scrollDirection,
              elevation: 5,
              children: List.generate(10, (int index) {
                return Container(
                  child: const Center(
                    child:  Text(
                      "CarouselView Widget",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            offset: Offset(3.0, 3.0),
                            blurRadius: 4.0,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  color: Colors.lightBlueAccent,
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
