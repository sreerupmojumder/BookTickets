import 'package:booktickets/utils/app_layout.dart';
import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int section;
  const AppLayoutBuilderWidget({Key? key, this.isColor, required this.section}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate((constraints.constrainWidth()/15).floor(), (index) =>  SizedBox(
            width: AppLayout.getWidth(5),
            height: AppLayout.getHeight(1),
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: isColor==null?Colors.white: Colors.grey.shade300
              ),
            ),
          )),

        );
      },
    );
  }
}
