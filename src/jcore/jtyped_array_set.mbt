///|
fn JTypedArray::_u16_set(
  self : JTypedArray[UInt16],
  index : Int,
  value : UInt16
) = "global" "set"

///|
fn JTypedArray::_i16_set(self : JTypedArray[Int16], index : Int, value : Int16) = "global" "set"

///|
fn JTypedArray::_byte_set(self : JTypedArray[Byte], index : Int, value : Byte) = "global" "set"

///|
fn JTypedArray::_char_set(self : JTypedArray[Char], index : Int, value : Char) = "global" "set"

///|
fn JTypedArray::_f64_set(
  self : JTypedArray[Double],
  index : Int,
  value : Double
) = "global" "set"

///|
fn JTypedArray::_f32_set(self : JTypedArray[Float], index : Int, value : Float) = "global" "set"

///|
fn JTypedArray::_u32_set(self : JTypedArray[UInt], index : Int, value : UInt) = "global" "set"

///|
fn JTypedArray::_i32_set(self : JTypedArray[Int], index : Int, value : Int) = "global" "set"

///|
fn JTypedArray::_i64_set(self : JTypedArray[Int64], index : Int, value : Int64) = "global" "set"

///|
fn JTypedArray::_u64_set(
  self : JTypedArray[UInt64],
  index : Int,
  value : UInt64
) = "global" "set"

///|
pub impl Js_TypedArray for Int with set(self, index, value) {
  JTypedArray::_i32_set(self, index, value)
}

///|
pub impl Js_TypedArray for UInt with set(self, index, value) {
  JTypedArray::_u32_set(self, index, value)
}

///|
pub impl Js_TypedArray for Float with set(self, index, value) {
  JTypedArray::_f32_set(self, index, value)
}

///|
pub impl Js_TypedArray for Double with set(self, index, value) {
  JTypedArray::_f64_set(self, index, value)
}

///|
pub impl Js_TypedArray for Char with set(self, index, value) {
  JTypedArray::_char_set(self, index, value)
}

///|
pub impl Js_TypedArray for Byte with set(self, index, value) {
  JTypedArray::_byte_set(self, index, value)
}

///|
pub impl Js_TypedArray for Int16 with set(self, index, value) {
  JTypedArray::_i16_set(self, index, value)
}

///|
pub impl Js_TypedArray for UInt16 with set(self, index, value) {
  JTypedArray::_u16_set(self, index, value)
}

///|
pub impl Js_TypedArray for Int64 with set(self, index, value) {
  JTypedArray::_i64_set(self, index, value)
}

///|
pub impl Js_TypedArray for UInt64 with set(self, index, value) {
  JTypedArray::_u64_set(self, index, value)
}
