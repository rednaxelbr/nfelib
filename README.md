# nfelib

Dart Library for brazilian Nota Fiscal Eletrônica (NFe)

## Introduction

The brazilian DANFE (Documento Auxiliar da NFe) has a 44-digit key (Chave de Acesso) and a Check Digit (Dígito Verificador, or DV). This library provides functions for:
- Calculate the Check Digit from a 43-digit key
- Validate a 44-digit key for its Check Digit

## Example
```dart
    if (!chaveNfeValida(_codBarras)) {
      Fluttertoast.showToast(msg: "DANFE com DV inválido, leia novamente");
      return;
    }
```



