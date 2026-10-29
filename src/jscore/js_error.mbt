///|
pub impl Js_Error for Error_ with fn to_error(self) = "%identity"

///|
pub impl Js_Error for AggregateError with fn to_error(self) = "%identity"

///|
pub impl Js_Error for EvalError with fn to_error(self) = "%identity"

///|
pub impl Js_Error for RangeError with fn to_error(self) = "%identity"

///|
pub impl Js_Error for ReferenceError with fn to_error(self) = "%identity"

///|
pub impl Js_Error for SyntaxError with fn to_error(self) = "%identity"

///|
pub impl Js_Error for TypeError with fn to_error(self) = "%identity"
