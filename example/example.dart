import 'package:nfelib/nfelib.dart';

void main() {
  final chNfe = "Digite-aqui-a-chave-de-acesso-com-44-digitos";
  var resp = chaveNfeValida(chNfe);
  print('chaveNfeValida($chNfe) = $resp');
}
