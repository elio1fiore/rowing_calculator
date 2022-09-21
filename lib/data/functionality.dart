import 'package:flutter/material.dart';
import 'package:row_calculator/domain/functionality.dart';
import 'package:row_calculator/router/app_router.dart';
import 'package:row_calculator/util/type_name_function.dart';

import '../function/functions.dart';

final dataFunctionality = <Functionality>[
  Functionality(
    color: Colors.white,
    function: add,
    name: TypeNameFunction.add,
    navigatorPath: NavigatorPath.firstCalculationPage,
  ),
  Functionality(
    color: Colors.blue,
    function: add,
    name: TypeNameFunction.subtract,
    navigatorPath: NavigatorPath.secondCalculationPage,
  )
];
