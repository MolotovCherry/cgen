import 'package:cgen/src/rust/third_party/cgen/objects/date.dart';
import 'package:cgen/src/rust/third_party/cgen/objects/dn_type.dart';
import 'package:cgen/src/rust/third_party/cgen/objects/extended_key_usage_purpose.dart';
import 'package:cgen/src/rust/third_party/cgen/objects/key_usage_purpose.dart';
import 'package:cgen/src/rust/third_party/cgen/objects/rsa_key_size.dart';
import 'package:cgen/src/rust/third_party/cgen/objects/signature_algorithm.dart';
import 'package:flutter/material.dart';
import 'package:cgen/src/rust/frb_generated.dart';
import 'package:cgen/src/rust/third_party/cgen/certificate.dart';

Future<void> main() async {
  await RustLib.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var cert = Certificate();

    cert
      ..extendedKeyUsages = [
        ExtendedKeyUsagePurpose.serverAuth(),
        ExtendedKeyUsagePurpose.clientAuth(),
      ]
      ..distinguishedName = [
        (DnType.commonName(), "localhost"),
        (DnType.organizationName(), "Whatever Ltd."),
      ]
      ..notBefore = Date(year: 2026, month: 2, day: 23)
      ..notAfter = Date(year: 2046, month: 2, day: 23)
      ..keyUsages = [
        KeyUsagePurpose.digitalSignature,
        KeyUsagePurpose.keyEncipherment,
      ]
      ..signature = SignatureAlgorithm.rsaSha512
      ..rsaKeySize = RsaKeySize.k4096
      ..subjectAltNames = ["localhost"];

    cert.generate().then((key) {
      var data = key.certPem();
      print(data);
    });

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('flutter_rust_bridge quickstart')),
        body: Center(child: Text('Hello World')),
      ),
    );
  }
}
