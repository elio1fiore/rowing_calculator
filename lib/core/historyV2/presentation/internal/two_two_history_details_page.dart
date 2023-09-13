import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TwoTwoHistoryDetailsPage extends StatelessWidget {
  final String id;

  const TwoTwoHistoryDetailsPage({
    super.key,
    @PathParam('id') required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Text("TwoTwo");
  }
}
