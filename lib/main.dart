import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task0_2/bloc/blocs.dart';
import 'package:task0_2/helper/constant/color_helper.dart';
import 'package:task0_2/helper/constant/dimension.dart';
import 'package:task0_2/helper/utils/size_config.dart';

import 'helper/constant/const.dart';
import 'route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MultiBlocProvider(
              providers: [
                BlocProvider<ChanginState>(
                    create: ((context) => ChanginState())),
              ],
              child: MaterialApp(
                title: 'Flutter Tak0',
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  primaryColor: HexColor(PRIMARY_COLOR),
                  primarySwatch:
                      HexColor.generateMaterialColor(HexColor(PRIMARY_COLOR)),
                  shadowColor: HexColor(PRIMARY_COLOR),
                  iconTheme: IconThemeData(color: HexColor(PRIMARY_COLOR)),
                  textTheme: TextTheme(
                      displaySmall: TextStyle(
                          color: HexColor(K_WHITE),
                          fontSize: Dimensions.D_16,
                          fontWeight: FontWeight.w600),
                      displayMedium: TextStyle(
                          color: HexColor(
                            K_BLACK,
                          ),
                          fontSize: Dimensions.D_12),
                      displayLarge: const TextStyle(
                          fontSize: Dimensions.D_18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                      titleSmall: const TextStyle(
                          fontSize: Dimensions.D_14,
                          fontStyle: FontStyle.italic),
                      titleMedium: TextStyle(
                        fontSize: Dimensions.D_20,
                        fontWeight: FontWeight.w500,
                        color: HexColor(PRIMARY_COLOR),
                      ),
                      titleLarge: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueGrey),
                      headlineSmall: const TextStyle(
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                      ),
                      headlineMedium: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          color: HexColor(K_WHITE)),
                      labelSmall: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      )),
                ),
                navigatorKey: navigatorKey,
                onGenerateRoute: RouteGenerator.generateRoute,
                initialRoute: '/',
              ),
            );
          },
        );
      },
    );
  }
}
