import 'package:eternalwallet/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import 'bloc/theme_switch_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  HydratedStorage storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  HydratedBloc.storage = storage;

  runApp(AppProvider(child: MyApp()));
}

class AppProvider extends StatelessWidget {
  final Widget child;

  const AppProvider({required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeSwitchBloc>(
          create: (context) => ThemeSwitchBloc(),
        ),
        // Add more bloc providers if needed
      ],
      child: Provider<BuildContext>.value(
        value: context,
        child: child,
      ),
    );
  }
}

class GlobalContext {
  static BuildContext? appContext;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalContext.appContext = context;

    return BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
      builder: (context, state) {
        return MaterialApp(
          theme: state.isDarkTheme ? AppTheme.darkTheme : AppTheme.lightTheme,
          title: '',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.darkSplashScreen,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
