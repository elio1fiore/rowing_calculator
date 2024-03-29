import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:row_calculator/core/domain/functionality.dart';

@RoutePage()
class FeaturePage extends StatelessWidget {
  const FeaturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}

@RoutePage()
class FeatureListPage extends StatefulWidget {
  const FeatureListPage({super.key});

  @override
  State<FeatureListPage> createState() => _FeatureListPageState();
}

class _FeatureListPageState extends State<FeatureListPage> {
  @override
  Widget build(BuildContext context) {
    final List<Functionality> funcs = [
      Functionality(
        navigatorPath: 'one',
        nameFunctionality: '1  Input',
        subtitle: 'Calcola la media, i watt e il tempo sulle distanze',
      ),
      Functionality(
        navigatorPath: 'two',
        nameFunctionality: '2  Input',
        subtitle: 'Calcola la media, i metri, i watt e le varie percentuali',
      ),
      Functionality(
        navigatorPath: 'three',
        nameFunctionality: '3  Input',
        subtitle: 'Calcola il dispendio, il tempo, i watt e la media',
      ),
      Functionality(
        navigatorPath: 'speed-strokes',
        nameFunctionality: '4  Speed & Strokes',
        subtitle: 'Calcola velocità media e colpi al minuto',
      ),
    ];
    return ListView.builder(
      itemCount: funcs.length,
      itemBuilder: (context, index) {
        final func = funcs[index];

        return ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          onTap: () {
            AutoRouter.of(context).pushNamed(func.navigatorPath);
          },
          subtitle: Text(
            func.subtitle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          title: Text(func.nameFunctionality,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          trailing: const Icon(Icons.arrow_right),
          autofocus: false,
        );
      },
    );
  }
}
