///|
pub impl Js_Object for Error_ with to_object(self) = "%identity"

///|
pub impl Js_Object for AggregateError with to_object(self) = "%identity"

///|
pub impl Js_Object for EvalError with to_object(self) = "%identity"

///|
pub impl Js_Object for RangeError with to_object(self) = "%identity"

///|
pub impl Js_Object for ReferenceError with to_object(self) = "%identity"

///|
pub impl Js_Object for SyntaxError with to_object(self) = "%identity"

///|
pub impl Js_Object for TypeError with to_object(self) = "%identity"

///|
pub impl Js_Object for TextEncoder with to_object(self) = "%identity"

///|
pub impl Js_Object for Object with to_object(self) = "%identity"

///|
pub impl Js_Object for String_ with to_object(self) = "%identity"

///|
pub impl Js_Object for ArrayBuffer with to_object(self) = "%identity"

///|
pub impl Js_Object for Console with to_object(self) = "%identity"

///|
pub impl[T] Js_Object for TypedArray[T] with to_object(self) = "%identity"

///|
pub impl[T] Js_Object for WeakSet[T] with to_object(self) = "%identity"

///|
pub impl[T] Js_Object for Set[T] with to_object(self) = "%identity"

///|
pub impl[K, V] Js_Object for Map[K, V] with to_object(self) = "%identity"

///|
pub impl[K, V] Js_Object for WeakMap[K, V] with to_object(self) = "%identity"

///|
pub impl Js_Object for Date with to_object(self) = "%identity"

///|
pub impl Js_Object for RegExp with to_object(self) = "%identity"

///|
pub impl Js_Object for SharedArrayBuffer with to_object(self) = "%identity"

///|
pub impl Js_Object for DataView with to_object(self) = "%identity"

///|
pub impl[T] Js_Object for WeakRef[T] with to_object(self) = "%identity"

///|
pub impl[T] Js_Object for Iterator[T] with to_object(self) = "%identity"

///|
pub impl[T] Js_Object for Array[T] with to_object(self) = "%identity"
