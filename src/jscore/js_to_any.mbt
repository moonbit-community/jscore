///|
fn _byte_to_any(x : Byte) -> Any = "illusory0x0_core_global" "coerce"

///|
fn _u16_to_any(x : UInt16) -> Any = "illusory0x0_core_global" "coerce"

///|
fn _u32_to_any(x : UInt) -> Any = "illusory0x0_core_global" "coerce"

///|
fn _u64_to_any(x : UInt64) -> Any = "illusory0x0_core_global" "coerce"

///|
fn _i16_to_any(x : Int16) -> Any = "illusory0x0_core_global" "coerce"

///|
fn _i64_to_any(x : Int64) -> Any = "illusory0x0_core_global" "coerce"

///|
fn _i32_to_any(x : Int) -> Any = "illusory0x0_core_global" "coerce"

///|
fn _f32_to_any(x : Float) -> Any = "illusory0x0_core_global" "coerce"

///|
fn _f64_to_any(x : Double) -> Any = "illusory0x0_core_global" "coerce"

///|
fn _bool_to_any(x : Bool) -> Any = "illusory0x0_core_global" "number_to_bool"

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
pub impl Js for Any with to_any(self) = "%identity"

///|
pub impl Js for Error_ with to_any(self) = "%identity"

///|
pub impl Js for AggregateError with to_any(self) = "%identity"

///|
pub impl Js for EvalError with to_any(self) = "%identity"

///|
pub impl Js for RangeError with to_any(self) = "%identity"

///|
pub impl Js for ReferenceError with to_any(self) = "%identity"

///|
pub impl Js for SyntaxError with to_any(self) = "%identity"

///|
pub impl Js for TypeError with to_any(self) = "%identity"

///|
pub impl Js for TextEncoder with to_any(self) = "%identity"

///|
pub impl Js for Object with to_any(self) = "%identity"

///|
pub impl Js for String_ with to_any(self) = "%identity"

///|
pub impl Js for ArrayBuffer with to_any(self) = "%identity"

///|
pub impl Js for Console with to_any(self) = "%identity"

///|
pub impl[T] Js for TypedArray[T] with to_any(self) = "%identity"

///|
pub impl[T] Js for WeakSet[T] with to_any(self) = "%identity"

///|
pub impl[T] Js for Set[T] with to_any(self) = "%identity"

///|
pub impl[K, V] Js for Map[K, V] with to_any(self) = "%identity"

///|
pub impl[K, V] Js for WeakMap[K, V] with to_any(self) = "%identity"

///|
pub impl Js for Number with to_any(self) = "%identity"

///|
pub impl Js for Date with to_any(self) = "%identity"

///|
pub impl Js for RegExp with to_any(self) = "%identity"

///|
pub impl Js for SharedArrayBuffer with to_any(self) = "%identity"

///|
pub impl Js for DataView with to_any(self) = "%identity"

///|
pub impl[T] Js for WeakRef[T] with to_any(self) = "%identity"

///|
pub impl[T : Js] Js for T? with to_any(self) {
  match self {
    None => js_undefined
    Some(x) => x.to_any()
  }
}

///|
pub impl[T] Js for Iterator[T] with to_any(self) = "%identity"

///|
pub impl[T] Js for Array[T] with to_any(self) = "%identity"
