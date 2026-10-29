///|
pub impl Js_Object for Error_ with fn to_object(self) = "%identity"

///|
pub impl Js_Object for AggregateError with fn to_object(self) = "%identity"

///|
pub impl Js_Object for EvalError with fn to_object(self) = "%identity"

///|
pub impl Js_Object for RangeError with fn to_object(self) = "%identity"

///|
pub impl Js_Object for ReferenceError with fn to_object(self) = "%identity"

///|
pub impl Js_Object for SyntaxError with fn to_object(self) = "%identity"

///|
pub impl Js_Object for TypeError with fn to_object(self) = "%identity"

///|
pub impl Js_Object for TextEncoder with fn to_object(self) = "%identity"

///|
pub impl Js_Object for Object with fn to_object(self) = "%identity"

///|
pub impl Js_Object for String_ with fn to_object(self) = "%identity"

///|
pub impl Js_Object for ArrayBuffer with fn to_object(self) = "%identity"

///|
pub impl Js_Object for Console with fn to_object(self) = "%identity"

///|
pub impl[T] Js_Object for TypedArray[T] with fn to_object(self) = "%identity"

///|
pub impl[T] Js_Object for WeakSet[T] with fn to_object(self) = "%identity"

///|
pub impl[T] Js_Object for Set[T] with fn to_object(self) = "%identity"

///|
pub impl[K, V] Js_Object for Map[K, V] with fn to_object(self) = "%identity"

///|
pub impl[K, V] Js_Object for WeakMap[K, V] with fn to_object(self) = "%identity"

///|
pub impl Js_Object for Date with fn to_object(self) = "%identity"

///|
pub impl Js_Object for RegExp with fn to_object(self) = "%identity"

///|
pub impl Js_Object for SharedArrayBuffer with fn to_object(self) = "%identity"

///|
pub impl Js_Object for DataView with fn to_object(self) = "%identity"

///|
pub impl[T] Js_Object for WeakRef[T] with fn to_object(self) = "%identity"

///|
pub impl[T] Js_Object for Iterator[T] with fn to_object(self) = "%identity"

///|
pub impl[T] Js_Object for Array[T] with fn to_object(self) = "%identity"
