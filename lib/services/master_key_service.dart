import 'package:crypto/crypto.dart';
import 'dart:convert';

class MasterKeyService {
  // SHA-256 hash of your master key (hex). Set your own before building.
  static const String _masterKeyHash = "REPLACE_WITH_SHA256_OF_YOUR_MASTER_KEY";

  bool verifyMasterKey(String inputKey) {
    final bytes = utf8.encode(inputKey);
    final digest = sha256.convert(bytes);
    return digest.toString() == _masterKeyHash;
  }
}