use cgen::{
    CertificateParams, DnType, ExtendedKeyUsagePurpose, KeyUsagePurpose, RsaKeySize,
    SignatureAlgorithm,
};

fn main() {
    let a = CertificateParams::new()
        .signature(SignatureAlgorithm::PKCS_RSA_SHA512)
        .not_before(2026, 2, 17)
        .not_after(2046, 2, 17)
        .subject_alt_names(["vault.local", "localhost"])
        .distinguished_name([(DnType::CommonName, "vault.local")])
        .key_usages([
            KeyUsagePurpose::DigitalSignature,
            KeyUsagePurpose::KeyEncipherment,
        ])
        .extended_key_usages([
            ExtendedKeyUsagePurpose::ClientAuth,
            ExtendedKeyUsagePurpose::ServerAuth,
        ])
        .rsa_key_size(RsaKeySize::_4096)
        .generate()
        .unwrap();

    println!("{}\n{}", a.cert.pem(), a.signing_key.serialize_pem());
}
