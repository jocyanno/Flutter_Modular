// fu-modular-module
import 'package:dw10_modular/src/modules/core/core_module.dart';
import 'package:dw10_modular/src/modules/home/home_page.dart';
import 'package:dw10_modular/src/modules/pessoa/pessoa_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {

        // Bind.singleton<PessoaRepository>((i) => PessoaRepositoryImpl()),
        // vai da a mesma instancia
        // Bind.instance<PessoaRepository>(PessoaRepositoryImpl())
        // sempre vai da uma nova instancia
        // Bind.factory<PessoaRepository>((i) => PessoaRepositoryImpl())

  @override
  List<Module> get modules => [CoreModule(), PessoaModule()];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
        ChildRoute('/:id/', child: (context, args) => const HomePage()),
      ];
}
