import 'dart:convert';
import 'package:crypto/crypto.dart';


String encript(String password) {
  var bytes = utf8.encode('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJzYWN1bGtiaGZscm16enJmeGpwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTA2NzE2NTcsImV4cCI6MjAwNjI0NzY1N30.QGw1pPEMJi8SIXcmzZ92VBrhWaztJytp1T72lHPELa8');
  var hmacSha512 = Hmac(sha512, bytes);
  var digest = hmacSha512.convert(utf8.encode(password));
  return digest.toString();

}