///|
fn _byte_to_any(x : Byte) -> JAny = "illusory0x0_core_global" "coerce"

///|
fn _u16_to_any(x : UInt16) -> JAny = "illusory0x0_core_global" "coerce"

///|
fn _u32_to_any(x : UInt) -> JAny = "illusory0x0_core_global" "coerce"

///|
fn _u64_to_any(x : UInt64) -> JAny = "illusory0x0_core_global" "coerce"

///|
fn _i16_to_any(x : Int16) -> JAny = "illusory0x0_core_global" "coerce"

///|
fn _i64_to_any(x : Int64) -> JAny = "illusory0x0_core_global" "coerce"

///|
fn _i32_to_any(x : Int) -> JAny = "illusory0x0_core_global" "coerce"

///|
fn _f32_to_any(x : Float) -> JAny = "illusory0x0_core_global" "coerce"

///|
fn _f64_to_any(x : Double) -> JAny = "illusory0x0_core_global" "coerce"

///|
fn _bool_to_any(x : Bool) -> JAny = "illusory0x0_core_global" "number_to_bool"

///|
pub impl Js for Int with to_any(self) {
  _i32_to_any(self)
}

///|
pub impl Js for Float with to_any(self) {
  _f32_to_any(self)
}

///|
pub impl Js for Double with to_any(self) {
  _f64_to_any(self)
}

///|
pub impl Js for UInt with to_any(self) {
  _u32_to_any(self)
}

///|
pub impl Js for UInt64 with to_any(self) {
  _u64_to_any(self)
}

///|
pub impl Js for Int64 with to_any(self) {
  _i64_to_any(self)
}

///|
pub impl Js for UInt16 with to_any(self) {
  _u16_to_any(self)
}

///|
pub impl Js for Int16 with to_any(self) {
  _i16_to_any(self)
}

///|
pub impl Js for Bool with to_any(self) {
  _bool_to_any(self)
}

///|
pub impl Js for Byte with to_any(self) {
  _byte_to_any(self)
}

///|
pub impl Js for JAny with to_any(self) = "%identity"

///|
pub impl Js for JError with to_any(self) = "%identity"

///|
pub impl Js for JAggregateError with to_any(self) = "%identity"

///|
pub impl Js for JEvalError with to_any(self) = "%identity"

///|
pub impl Js for JRangeError with to_any(self) = "%identity"

///|
pub impl Js for JReferenceError with to_any(self) = "%identity"

///|
pub impl Js for JSyntaxError with to_any(self) = "%identity"

///|
pub impl Js for JTypeError with to_any(self) = "%identity"

///|
pub impl Js for JTextEncoder with to_any(self) = "%identity"

///|
pub impl Js for JObject with to_any(self) = "%identity"

///|
pub impl Js for JString with to_any(self) = "%identity"

///|
pub impl Js for JArrayBuffer with to_any(self) = "%identity"

///|
pub impl Js for JConsole with to_any(self) = "%identity"

///|
pub impl[T] Js for JTypedArray[T] with to_any(self) = "%identity"

///|
pub impl[T] Js for JWeakSet[T] with to_any(self) = "%identity"

///|
pub impl[T] Js for JSet[T] with to_any(self) = "%identity"

///|
pub impl[K, V] Js for JMap[K, V] with to_any(self) = "%identity"

///|
pub impl[K, V] Js for JWeakMap[K, V] with to_any(self) = "%identity"

///|
pub impl Js for JNumber with to_any(self) = "%identity"

///|
pub impl Js for JDate with to_any(self) = "%identity"

///|
pub impl Js for JRegExp with to_any(self) = "%identity"

///|
pub impl Js for JSharedArrayBuffer with to_any(self) = "%identity"

///|
pub impl Js for JDataView with to_any(self) = "%identity"

///|
pub impl[T] Js for JWeakRef[T] with to_any(self) = "%identity"

///|
pub impl[T : Js] Js for T? with to_any(self) {
  match self {
    None => js_undefined
    Some(x) => x.to_any()
  }
}

///|
pub impl[T] Js for JIterator[T] with to_any(self) = "%identity"

///|
pub impl[T] Js for JArray[T] with to_any(self) = "%identity"
