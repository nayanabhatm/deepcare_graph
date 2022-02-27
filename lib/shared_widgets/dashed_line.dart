import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  const DashedLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = (constraints.maxWidth != double.infinity)
            ? constraints.maxWidth
            : MediaQuery.of(context).size.width;
        const dashWidth = 7.5;
        const dashHeight = 1.0;
        final dashCount = (boxWidth / (1.5 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return const SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            );
          }),
        );
      },
    );
  }
}
