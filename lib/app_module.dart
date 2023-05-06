
import 'package:dw10_modular/src/modules/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

// pai de todos
class AppModule extends Module {
  // gerenciamento de dependencia
  // classes que estão no bind nunca morrem
  @override
  List<Bind<Object>> get binds => [];


  @override
  List<ModularRoute> get routes => [ChildRoute('/', child: (context, args) => const HomePage())];
}
