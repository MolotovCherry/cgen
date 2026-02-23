use std::{mem::ManuallyDrop, ptr};

use rcgen::{DistinguishedNameIterator, DnValue};

use super::DnType;

/// Distinguished name used e.g. for the issuer and subject fields of a certificate
///
/// A distinguished name is a set of (attribute type, attribute value) tuples.
///
/// This datastructure keeps them ordered by insertion order.
///
/// See also the RFC 5280 sections on the [issuer](https://tools.ietf.org/html/rfc5280#section-4.1.2.4)
/// and [subject](https://tools.ietf.org/html/rfc5280#section-4.1.2.6) fields.
#[derive(Debug, Default, PartialEq, Eq, Clone)]
pub struct DistinguishedName(rcgen::DistinguishedName);

impl DistinguishedName {
    /// Creates a new, empty distinguished name
    /// flutter_rust_bridge:sync
    pub fn new() -> Self {
        Self::default()
    }

    /// Obtains the attribute value for the given attribute type
    /// flutter_rust_bridge:ignore
    pub fn get(&self, ty: &DnType) -> Option<&DnValue> {
        let v = match ty {
            DnType::CountryName => rcgen::DnType::CountryName,
            DnType::LocalityName => rcgen::DnType::LocalityName,
            DnType::StateOrProvinceName => rcgen::DnType::StateOrProvinceName,
            DnType::OrganizationName => rcgen::DnType::OrganizationName,
            DnType::OrganizationalUnitName => rcgen::DnType::OrganizationalUnitName,
            DnType::CommonName => rcgen::DnType::CommonName,
            DnType::CustomDnType(items) => {
                // SAFETY: Vec is behind a shared reference that is guaranteed to never change
                //         in this fn call
                let v = unsafe { ptr::read(items) };
                rcgen::DnType::CustomDnType(v)
            }
        };

        // do not the drop! (use ManuallyDrop to ensure even panics will not drop)
        let v = ManuallyDrop::new(v);

        self.0.get(&v)
    }

    /// Removes the attribute with the specified DnType
    ///
    /// Returns true when an actual removal happened, false
    /// when no attribute with the specified DnType was
    /// found.
    /// flutter_rust_bridge:sync
    pub fn remove(&mut self, ty: DnType) -> bool {
        self.0.remove(ty.into())
    }

    /// Inserts or updates an attribute that consists of type and name
    ///
    /// ```
    /// # use rcgen::{DistinguishedName, DnType, DnValue};
    /// let mut dn = DistinguishedName::new();
    /// dn.push(DnType::OrganizationName, "Crab widgits SE");
    /// dn.push(DnType::CommonName, DnValue::PrintableString("Master Cert".try_into().unwrap()));
    /// assert_eq!(dn.get(&DnType::OrganizationName), Some(&DnValue::Utf8String("Crab widgits SE".to_string())));
    /// assert_eq!(dn.get(&DnType::CommonName), Some(&DnValue::PrintableString("Master Cert".try_into().unwrap())));
    /// ```
    /// flutter_rust_bridge:ignore
    pub fn push(&mut self, ty: DnType, s: impl Into<DnValue>) {
        self.0.push(ty.into(), s);
    }

    /// Inserts or updates an attribute that consists of type and name
    ///
    /// ```
    /// # use rcgen::{DistinguishedName, DnType, DnValue};
    /// let mut dn = DistinguishedName::new();
    /// dn.push(DnType::OrganizationName, "Crab widgits SE");
    /// dn.push(DnType::CommonName, DnValue::PrintableString("Master Cert".try_into().unwrap()));
    /// assert_eq!(dn.get(&DnType::OrganizationName), Some(&DnValue::Utf8String("Crab widgits SE".to_string())));
    /// assert_eq!(dn.get(&DnType::CommonName), Some(&DnValue::PrintableString("Master Cert".try_into().unwrap())));
    /// ```
    /// flutter_rust_bridge:sync
    pub fn push_str(&mut self, ty: DnType, s: &str) {
        self.0.push(ty.into(), s);
    }

    /// Iterate over the entries
    /// flutter_rust_bridge:ignore
    pub fn iter(&self) -> DistinguishedNameIterator<'_> {
        self.0.iter()
    }
}

impl From<DistinguishedName> for rcgen::DistinguishedName {
    fn from(value: DistinguishedName) -> Self {
        value.0
    }
}
