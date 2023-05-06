import 'package:dw10_modular/src/repositories/pessoa/pessoa_repository.dart';
import 'package:dw10_modular/src/repositories/pessoa/pessoa_repository_impl.dart';
import 'package:dw10_modular/src/services/buscar_pessoa_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PessoaModule extends Module {

   @override
   List<Bind> get binds => [
    Bind.lazySingleton<PessoaRepository>((i) => PessoaRepositoryImpl(), export: true),
        Bind.lazySingleton<BuscarPessoaService>(
            (i) => BuscarPessoaService(pessoaRepository: i()) , export: true),

   ];

   

}