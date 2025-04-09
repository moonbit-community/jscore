///|
fn TypedArray::_u16_set(
  self : TypedArray[UInt16],
  index : Int,
  value : UInt16
) = "illusory0x0_core_global" "set"

///|
fn TypedArray::_i16_set(self : TypedArray[Int16], index : Int, value : Int16) = "illusory0x0_core_global" "set"

///|
fn TypedArray::_byte_set(self : TypedArray[Byte], index : Int, value : Byte) = "illusory0x0_core_global" "set"

///|
fn TypedArray::_char_set(self : TypedArray[Char], index : Int, value : Char) = "illusory0x0_core_global" "set"

///|
fn TypedArray::_f64_set(
  self : TypedArray[Double],
  index : Int,
  value : Double
) = "illusory0x0_core_global" "set"

///|
fn TypedArray::_f32_set(self : TypedArray[Float], index : Int, value : Float) = "illusory0x0_core_global" "set"

///|
fn TypedArray::_u32_set(self : TypedArray[UInt], index : Int, value : UInt) = "illusory0x0_core_global" "set"

///|
fn TypedArray::_i32_set(self : TypedArray[Int], index : Int, value : Int) = "illusory0x0_core_global" "set"

///|
fn TypedArray::_i64_set(self : TypedArray[Int64], index : Int, value : Int64) = "illusory0x0_core_global" "set"

///|
fn TypedArray::_u64_set(
  self : TypedArray[UInt64],
  index : Int,
  value : UInt64
) = "illusory0x0_core_global" "set"

///|
pub impl Js_TypedArray for Int with set(self, index, value) {
  TypedArray::_i32_set(self, index, value)
}

///|
pub impl Js_TypedArray for UInt with set(self, index, value) {
  TypedArray::_u32_set(self, index, value)
}

///|
pub impl Js_TypedArray for Float with set(self, index, value) {
  TypedArray::_f32_set(self, index, value)
}

///|
pub impl Js_TypedArray for Double with set(self, index, value) {
  TypedArray::_f64_set(self, index, value)
}

///|
pub impl Js_TypedArray for Char with set(self, index, value) {
  TypedArray::_char_set(self, index, value)
}

///|
pub impl Js_TypedArray for Byte with set(self, index, value) {
  TypedArray::_byte_set(self, index, value)
}

///|
pub impl Js_TypedArray for Int16 with set(self, index, value) {
  TypedArray::_i16_set(self, index, value)
}

///|
pub impl Js_TypedArray for UInt16 with set(self, index, value) {
  TypedArray::_u16_set(self, index, value)
}

///|
pub impl Js_TypedArray for Int64 with set(self, index, value) {
  TypedArray::_i64_set(self, index, value)
}

///|
pub impl Js_TypedArray for UInt64 with set(self, index, value) {
  TypedArray::_u64_set(self, index, value)
}
