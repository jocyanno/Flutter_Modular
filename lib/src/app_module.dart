import 'package:dw10_modular/src/modules/home/home_module.dart';
import 'package:dw10_modular/src/modules/login/login_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    // ChildRoute('/home', child: (context, args) => const HomePage()),
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/login', module: LoginModule()),
  ];
}