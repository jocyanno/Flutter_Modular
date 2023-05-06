// fu-modular-module 
import 'package:dw10_modular/src/modules/home/home_page.dart';
import 'package:dw10_modular/src/repositories/pessoa/pessoa_repository.dart';
import 'package:dw10_modular/src/repositories/pessoa/pessoa_repository_impl.dart';
import 'package:dw10_modular/src/services/buscar_pessoa_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  
   @override
   List<Bind> get binds => [
   // vai iniciar na primeira vez que acessar
    Bind.lazySingleton<PessoaRepository>((i) => PessoaRepositoryImpl()),
    Bind.lazySingleton<BuscarPessoaService>((i) => BuscarPessoaService(pessoaRepository: i())),
    // Bind.singleton<PessoaRepository>((i) => PessoaRepositoryImpl()),
    // vai da a mesma instancia
    // Bind.instance<PessoaRepository>(PessoaRepositoryImpl())
    // sempre vai da uma nova instancia
    // Bind.factory<PessoaRepository>((i) => PessoaRepositoryImpl())
   ];

   @override
   List<ModularRoute> get routes => [
      ChildRoute('/', child: (context, args) => const HomePage()),
   ];

}