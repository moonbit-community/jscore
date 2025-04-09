///|
pub impl Js_Error for JError with to_error(self) = "%identity"

///|
pub impl Js_Error for JAggregateError with to_error(self) = "%identity"

///|
pub impl Js_Error for JEvalError with to_error(self) = "%identity"

///|
pub impl Js_Error for JRangeError with to_error(self) = "%identity"

///|
pub impl Js_Error for JReferenceError with to_error(self) = "%identity"

///|
pub impl Js_Error for JSyntaxError with to_error(self) = "%identity"

///|
pub impl Js_Error for JTypeError with to_error(self) = "%identity"
