///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Error/name)
pub fn JError::name(self : JError) -> JString = "global" "name"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Error/message)
pub fn JError::message(self : JError) -> JString = "global" "message"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Error/toString)
pub fn JError::toString(self : JError) -> JString = "Error" "toString"
