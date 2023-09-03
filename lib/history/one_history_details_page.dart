import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OneHistoryDetailsPage extends StatelessWidget {
  final String id;
  const OneHistoryDetailsPage({
    super.key,
    @PathParam('id') required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("One"),
        Text(id),
      ],
    );
  }
}
