use rcgen::date_time_ymd;
use time::OffsetDateTime;

#[derive(Copy, Clone)]
pub struct Date {
    pub year: i32,
    pub month: u8,
    pub day: u8,
}

impl From<Date> for OffsetDateTime {
    fn from(Date { year, month, day }: Date) -> Self {
        date_time_ymd(year, month, day)
    }
}
