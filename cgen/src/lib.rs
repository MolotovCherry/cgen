use std::{fs, path::PathBuf};

use bon::Builder;
#[allow(unused)]
use eyre::{Context, Result, bail};

#[cfg(feature = "extra_signature_algos")]
pub use rcgen::RsaKeySize;
use rcgen::{CertifiedKey, DistinguishedName, DnValue, KeyPair, date_time_ymd};
pub use rcgen::{
    CrlDistributionPoint, CustomExtension, DnType, ExtendedKeyUsagePurpose, KeyIdMethod,
    KeyUsagePurpose, SerialNumber,
};
use time::OffsetDateTime;

#[allow(non_camel_case_types)]
#[derive(Copy, Clone)]
pub enum SignatureAlgorithm {
    #[cfg(feature = "extra_signature_algos")]
    PKCS_RSA_SHA256,
    #[cfg(feature = "extra_signature_algos")]
    PKCS_RSA_SHA384,
    #[cfg(feature = "extra_signature_algos")]
    PKCS_RSA_SHA512,
    PKCS_ECDSA_P256_SHA256,
    PKCS_ECDSA_P384_SHA384,
    #[cfg(feature = "extra_signature_algos")]
    PKCS_ECDSA_P521_SHA256,
    #[cfg(feature = "extra_signature_algos")]
    PKCS_ECDSA_P521_SHA384,
    #[cfg(feature = "extra_signature_algos")]
    PKCS_ECDSA_P521_SHA512,
    PKCS_ED25519,
    #[cfg(feature = "extra_signature_algos")]
    PKCS_ML_DSA_44,
    #[cfg(feature = "extra_signature_algos")]
    PKCS_ML_DSA_65,
    #[cfg(feature = "extra_signature_algos")]
    PKCS_ML_DSA_87,
}

impl SignatureAlgorithm {
    fn is_rsa(&self) -> bool {
        #[cfg(feature = "extra_signature_algos")]
        let res = matches!(
            self,
            Self::PKCS_RSA_SHA256 | Self::PKCS_RSA_SHA384 | Self::PKCS_RSA_SHA512
        );

        #[cfg(not(feature = "extra_signature_algos"))]
        let res = false;

        res
    }
}

impl From<SignatureAlgorithm> for &'static rcgen::SignatureAlgorithm {
    fn from(value: SignatureAlgorithm) -> Self {
        match value {
            #[cfg(feature = "extra_signature_algos")]
            SignatureAlgorithm::PKCS_RSA_SHA256 => &rcgen::PKCS_RSA_SHA256,
            #[cfg(feature = "extra_signature_algos")]
            SignatureAlgorithm::PKCS_RSA_SHA384 => &rcgen::PKCS_RSA_SHA384,
            #[cfg(feature = "extra_signature_algos")]
            SignatureAlgorithm::PKCS_RSA_SHA512 => &rcgen::PKCS_RSA_SHA512,
            SignatureAlgorithm::PKCS_ECDSA_P256_SHA256 => &rcgen::PKCS_ECDSA_P256_SHA256,
            SignatureAlgorithm::PKCS_ECDSA_P384_SHA384 => &rcgen::PKCS_ECDSA_P384_SHA384,
            #[cfg(feature = "extra_signature_algos")]
            SignatureAlgorithm::PKCS_ECDSA_P521_SHA256 => &rcgen::PKCS_ECDSA_P521_SHA256,
            #[cfg(feature = "extra_signature_algos")]
            SignatureAlgorithm::PKCS_ECDSA_P521_SHA384 => &rcgen::PKCS_ECDSA_P521_SHA384,
            #[cfg(feature = "extra_signature_algos")]
            SignatureAlgorithm::PKCS_ECDSA_P521_SHA512 => &rcgen::PKCS_ECDSA_P521_SHA512,
            SignatureAlgorithm::PKCS_ED25519 => &rcgen::PKCS_ED25519,
            #[cfg(feature = "extra_signature_algos")]
            SignatureAlgorithm::PKCS_ML_DSA_44 => &rcgen::PKCS_ML_DSA_44,
            #[cfg(feature = "extra_signature_algos")]
            SignatureAlgorithm::PKCS_ML_DSA_65 => &rcgen::PKCS_ML_DSA_65,
            #[cfg(feature = "extra_signature_algos")]
            SignatureAlgorithm::PKCS_ML_DSA_87 => &rcgen::PKCS_ML_DSA_87,
        }
    }
}

#[derive(Builder)]
#[builder(start_fn = new)]
#[builder(finish_fn(vis = ""))] // noop builder
pub struct CertificateParams {
    /// Optional CA to use instead of making our own
    #[builder(into)]
    ca: Option<PathBuf>,
    /// Signature algorithm for the CSR. If not set, defaults to PKCS_ED25519.
    /// If you select RSA, you must set `rsa_key_size` as well.
    #[builder(default = SignatureAlgorithm::PKCS_ED25519)]
    signature: SignatureAlgorithm,
    /// Certificate starting date. Use [`date_time_ymd`] to generate a date
    #[builder(setters(vis = "", name = not_before_internal))]
    not_before: OffsetDateTime,
    /// Certificate ending date. Use [`date_time_ymd`] to generate a date
    #[builder(setters(vis = "", name = not_after_internal))]
    not_after: OffsetDateTime,
    #[builder(setters(vis = "", name = subject_alt_names_internal))]
    subject_alt_names: Vec<String>,
    serial_number: Option<SerialNumber>,
    #[builder(setters(vis = "", name = distinguished_name_internal))]
    distinguished_name: DistinguishedName,
    #[builder(into)]
    key_usages: Vec<KeyUsagePurpose>,
    #[builder(into)]
    extended_key_usages: Vec<ExtendedKeyUsagePurpose>,
    /// An optional list of certificate revocation list (CRL) distribution points as described
    /// in RFC 5280 Section 4.2.1.13[^1]. Each distribution point contains one or more URIs where
    /// an up-to-date CRL with scope including this certificate can be retrieved.
    ///
    /// [^1]: <https://www.rfc-editor.org/rfc/rfc5280#section-4.2.1.13>
    #[builder(default)]
    #[builder(into)]
    crl_distribution_points: Vec<CrlDistributionPoint>,
    #[builder(default)]
    #[builder(into)]
    custom_extensions: Vec<CustomExtension>,
    #[builder(default)]
    /// If `true`, the ‘Authority Key Identifier’ extension will be added to the generated cert
    use_authority_key_identifier_extension: bool,
    /// Method to generate key identifiers from public keys
    ///
    /// Defaults to a truncated SHA-256 digest. See [`KeyIdMethod`] for more information.
    #[builder(default = KeyIdMethod::Sha256)]
    key_identifier_method: KeyIdMethod,
    /// The key size used for RSA key generation
    #[cfg(feature = "extra_signature_algos")]
    #[builder(into)]
    rsa_key_size: Option<RsaKeySize>,
}

use crate::certificate_params_builder::{
    IsComplete, IsUnset, SetDistinguishedName, SetNotAfter, SetNotBefore, SetSubjectAltNames, State,
};

impl<S: State> CertificateParamsBuilder<S> {
    pub fn not_before(
        self,
        year: i32,
        month: u8,
        day: u8,
    ) -> CertificateParamsBuilder<SetNotBefore<S>>
    where
        S::NotBefore: IsUnset,
    {
        let date = date_time_ymd(year, month, day);
        self.not_before_internal(date)
    }

    pub fn not_after(
        self,
        year: i32,
        month: u8,
        day: u8,
    ) -> CertificateParamsBuilder<SetNotAfter<S>>
    where
        S::NotAfter: IsUnset,
    {
        let date = date_time_ymd(year, month, day);
        self.not_after_internal(date)
    }

    pub fn subject_alt_names<V, V2>(
        self,
        data: V,
    ) -> CertificateParamsBuilder<SetSubjectAltNames<S>>
    where
        S::SubjectAltNames: IsUnset,
        V: Into<Vec<V2>>,
        V2: Into<String>,
    {
        let data = data
            .into()
            .into_iter()
            .map(|v| v.into())
            .collect::<Vec<_>>();

        self.subject_alt_names_internal(data)
    }

    pub fn distinguished_name<V, V2>(
        self,
        values: V,
    ) -> CertificateParamsBuilder<SetDistinguishedName<S>>
    where
        V: Into<Vec<(DnType, V2)>>,
        V2: Into<DnValue>,
        S::DistinguishedName: IsUnset,
    {
        let values = values.into();
        let mut data = DistinguishedName::new();
        for (ty, value) in values {
            let v2 = value.into();
            data.push(ty, v2);
        }
        self.distinguished_name_internal(data)
    }
}

impl<S: IsComplete> CertificateParamsBuilder<S> {
    pub fn generate(self) -> Result<CertifiedKey<KeyPair>> {
        use rcgen::CertificateParams;
        use rustls_pki_types::{PrivateKeyDer, PrivatePkcs8KeyDer};

        let params = self.build();

        // CA private signing key
        let signing_key = if let Some(ca) = params.ca {
            let file = fs::read(ca)?;

            'ok: {
                if let Ok(ca) = str::from_utf8(&file) {
                    if let Ok(key) = KeyPair::from_pem(ca) {
                        break 'ok key;
                    }

                    if let Ok(key) = KeyPair::from_pem_and_sign_algo(ca, params.signature.into()) {
                        break 'ok key;
                    }

                    if let Ok(key) =
                        KeyPair::from_pkcs8_pem_and_sign_algo(ca, params.signature.into())
                    {
                        break 'ok key;
                    }
                }

                // try to auto detect der + sig
                if let Ok(key) = KeyPair::try_from(&*file) {
                    break 'ok key;
                }

                if let Ok(key) = TryInto::<PrivateKeyDer>::try_into(&*file)
                    && let Ok(key) = KeyPair::from_der_and_sign_algo(&key, params.signature.into())
                {
                    break 'ok key;
                }

                let key = PrivatePkcs8KeyDer::from(&*file);
                if let Ok(key) =
                    KeyPair::from_pkcs8_der_and_sign_algo(&key, params.signature.into())
                {
                    break 'ok key;
                }

                bail!(
                    "failed to figure out ca key type. if you haven't, try setting the signature type to help"
                );
            }
        } else if params.signature.is_rsa() {
            #[cfg(feature = "extra_signature_algos")]
            let Some(key_size) = params.rsa_key_size else {
                bail!("rsa keysize required when using rsa sig algo")
            };

            #[cfg(feature = "extra_signature_algos")]
            {
                KeyPair::generate_rsa_for(params.signature.into(), key_size)?
            }
            #[cfg(not(feature = "extra_signature_algos"))]
            #[allow(clippy::diverging_sub_expression, unused_variables)]
            {
                unreachable!("is_rsa() should not have returned true")
            }
        } else {
            KeyPair::generate_for(params.signature.into()).context("signing key gen failed")?
        };

        let mut cert = CertificateParams::new(params.subject_alt_names)
            .context("CertificateParams::new failed")?;
        cert.not_before = params.not_before;
        cert.not_after = params.not_after;
        cert.serial_number = params.serial_number;
        cert.distinguished_name = params.distinguished_name;
        cert.key_usages = params.key_usages;
        cert.extended_key_usages = params.extended_key_usages;
        cert.crl_distribution_points = params.crl_distribution_points;
        cert.custom_extensions = params.custom_extensions;
        cert.use_authority_key_identifier_extension = params.use_authority_key_identifier_extension;
        cert.key_identifier_method = params.key_identifier_method;

        let cert = cert.self_signed(&signing_key).context("cert gen failed")?;

        Ok(CertifiedKey { cert, signing_key })
    }
}
