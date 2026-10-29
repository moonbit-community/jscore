///|
impl Js with fn downcast_(self : Any) -> Self = "%identity"

///|
fn _any_to_byte(x : Any) -> Byte = "illusory0x0_core_global" "coerce"

///|
fn _any_to_i16(x : Any) -> Int16 = "illusory0x0_core_global" "coerce"

///|
fn _any_to_u16(x : Any) -> UInt16 = "illusory0x0_core_global" "coerce"

///|
fn _any_to_u32(x : Any) -> UInt32 = "illusory0x0_core_global" "coerce"

///|
fn _any_to_u64(x : Any) -> UInt64 = "illusory0x0_core_global" "coerce"

///|
fn _any_to_i64(x : Any) -> Int64 = "illusory0x0_core_global" "coerce"

///|
fn _any_to_i32(x : Any) -> Int32 = "illusory0x0_core_global" "coerce"

///|
fn _any_to_f32(x : Any) -> Float = "illusory0x0_core_global" "coerce"

///|
fn _any_to_f64(x : Any) -> Double = "illusory0x0_core_global" "coerce"

///|
fn _any_to_bool(x : Any) -> Bool = "illusory0x0_core_global" "coerce"

///|
pub impl Js for Byte with fn downcast_(x : Any) -> Byte {
  _any_to_byte(x)
}

///|
pub impl Js for Int32 with fn downcast_(x : Any) -> Int32 {
  _any_to_i32(x)
}

///|
pub impl Js for Float with fn downcast_(x : Any) -> Float {
  _any_to_f32(x)
}

///|
pub impl Js for Double with fn downcast_(x : Any) -> Double {
  _any_to_f64(x)
}

///|
pub impl Js for UInt32 with fn downcast_(x : Any) -> UInt32 {
  _any_to_u32(x)
}

///|
pub impl Js for UInt64 with fn downcast_(x : Any) -> UInt64 {
  _any_to_u64(x)
}

///|
pub impl Js for Int64 with fn downcast_(x : Any) -> Int64 {
  _any_to_i64(x)
}

///|
pub impl Js for UInt16 with fn downcast_(x : Any) -> UInt16 {
  _any_to_u16(x)
}

///|
pub impl Js for Int16 with fn downcast_(x : Any) -> Int16 {
  _any_to_i16(x)
}

///|
pub impl Js for Bool with fn downcast_(x : Any) -> Bool {
  _any_to_bool(x)
}
