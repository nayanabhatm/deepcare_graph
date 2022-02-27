import 'package:deepcare_demo/utils/styles.dart';
import 'package:flutter/material.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(Styles.padding20),
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Styles.padding10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline,
              size: Styles.radius30,
            ),
            const SizedBox(
              height: Styles.padding20,
            ),
            Text(
              message,
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
