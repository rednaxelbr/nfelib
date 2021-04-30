// Copyright (c) 2021, Rednaxel Informática Ltda.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Cálculo do Dígito Verificador da Chave de Acesso da NF-e
///
/// Calcula o DV da [chnfe] conforme Manual de Orientação do Contribuinte 6.00
/// página 131, item 5.4: "O dígito verificador da chave de acesso da NF-e
/// é baseado em um cálculo do módulo 11 (...)"
int dvChaveNFe(String chnfe) {
  if (chnfe.length != 43) {
    return -1;
  }
  int _mult = 4;
  int _soma = 0;
  for (var i = 0; i < chnfe.length; i++) {
    int? _digito = int.tryParse(chnfe[i]);
    if (_digito == null) {
      return -2;
    }
    _soma += _digito * _mult;
    _mult--;
    if (_mult < 2) {
      _mult = 9;
    }
  }
  final _resto = _soma % 11;
  var _dv = 11 - _resto;
  if (_dv > 9) {
    _dv = 0;
  }

  return _dv;
}

/// Validação de Chave de NFe
///
/// Retorna `true` se o DV calculado é igual ao DV da [chnfe] informada.
bool chaveNfeValida(String chnfe) {
  if (chnfe.length != 44) {
    return false;
  }

  final _dv = int.tryParse(chnfe[43]);
  if (_dv == null) {
    return false;
  }

  return _dv == dvChaveNFe(chnfe.substring(0, 43));
}
