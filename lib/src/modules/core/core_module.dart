
import 'package:flutter_modular/flutter_modular.dart';

class CoreModule extends Module {

    @override
  List<Bind> get binds => [
        // // vai iniciar na primeira vez que acessar
        // Bind.lazySingleton<PessoaRepository>((i) => PessoaRepositoryImpl(), export: true),
        // Bind.lazySingleton<BuscarPessoaService>(
        //     (i) => BuscarPessoaService(pessoaRepository: i()) , export: true),
  ];
}