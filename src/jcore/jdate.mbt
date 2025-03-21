///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/now)
pub fn JDate::now() -> Double = "Date" "static_now"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/parse)
pub fn JDate::parse(self : JString) -> Double = "Date" "static_parse"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/UTC)
pub fn JDate::utc(
  year : Int,
  monthIndex : Int,
  day : Int,
  hours : Int,
  minutes : Int,
  seconds : Int,
  milliseconds : Int
) -> JDate = "Date" "static_UTC"

///|
pub fn JDate::from_timestamp(timestamp : Double) -> JDate = "new" "Date"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toJSON)
pub fn JDate::toJSON(self : JDate) -> JObject = "Date" "toJSON"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toLocaleString)
pub fn JDate::toLocaleString(self : JDate) -> JString = "Date" "toLocaleString"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toLocaleDateString)
pub fn JDate::toLocaleDateString(self : JDate) -> JString = "Date" "toLocaleDateString"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toLocaleTimeString)
pub fn JDate::toLocaleTimeString(self : JDate) -> JString = "Date" "toLocaleTimeString"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toString)
pub fn JDate::toString(self : JDate) -> JString = "Date" "toString"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toDateString)
pub fn JDate::toDateString(self : JDate) -> JString = "Date" "toDateString"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toTimeString)
pub fn JDate::toTimeString(self : JDate) -> JString = "Date" "toTimeString"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toISOString)
pub fn JDate::toISOString(self : JDate) -> JString = "Date" "toISOString"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toUTCString)
pub fn JDate::toUTCString(self : JDate) -> JString = "Date" "toUTCString"
///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toGMTString)
