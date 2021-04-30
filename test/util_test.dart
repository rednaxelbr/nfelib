import 'package:nfelib/src/util.dart';
import 'package:test/test.dart';

void main() {
  group('DV de uma Chave de NFe', () {
    test('Modulo 11 com resto > 1', () {
      var chave = "4321040556386800216755001000046006168753835";
      expect(dvChaveNFe(chave), equals(2));
    });
    test('Modulo 11 com resto 0 ou 1', () {
      var chave = "4321040933247600010255003000006223120026887";
      expect(dvChaveNFe(chave), equals(0));
    });
  });
}
