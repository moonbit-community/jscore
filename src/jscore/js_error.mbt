///|
pub impl Js_Error for Error_ with to_error(self) = "%identity"

///|
pub impl Js_Error for AggregateError with to_error(self) = "%identity"

///|
pub impl Js_Error for EvalError with to_error(self) = "%identity"

///|
pub impl Js_Error for RangeError with to_error(self) = "%identity"

///|
pub impl Js_Error for ReferenceError with to_error(self) = "%identity"

///|
pub impl Js_Error for SyntaxError with to_error(self) = "%identity"

///|
pub impl Js_Error for TypeError with to_error(self) = "%identity"
