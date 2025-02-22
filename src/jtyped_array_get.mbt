///|
fn JTypedArray::_u16_get(self : JTypedArray[UInt16], index : Int) -> UInt16 = "global" "get"

///|
fn JTypedArray::_i16_get(self : JTypedArray[Int16], index : Int) -> Int16 = "global" "get"

///|
fn JTypedArray::_byte_get(self : JTypedArray[Byte], index : Int) -> Byte = "global" "get"

///|
fn JTypedArray::_char_get(self : JTypedArray[Char], index : Int) -> Char = "global" "get"

///|
fn JTypedArray::_f64_get(self : JTypedArray[Double], index : Int) -> Double = "global" "get"

///|
fn JTypedArray::_f32_get(self : JTypedArray[Float], index : Int) -> Float = "global" "get"

///|
fn JTypedArray::_u32_get(self : JTypedArray[UInt], index : Int) -> UInt = "global" "get"

///|
fn JTypedArray::_i32_get(self : JTypedArray[Int], index : Int) -> Int = "global" "get"

///|
fn JTypedArray::_i64_get(self : JTypedArray[Int64], index : Int) -> Int64 = "global" "get"

///|
fn JTypedArray::_u64_get(self : JTypedArray[UInt64], index : Int) -> UInt64 = "global" "get"

///|
pub impl Js_TypedArray for Int with get(self, index) {
  JTypedArray::_i32_get(self, index)
}

///|
pub impl Js_TypedArray for UInt with get(self, index) {
  JTypedArray::_u32_get(self, index)
}

///|
pub impl Js_TypedArray for Float with get(self, index) {
  JTypedArray::_f32_get(self, index)
}

///|
pub impl Js_TypedArray for Double with get(self, index) {
  JTypedArray::_f64_get(self, index)
}

///|
pub impl Js_TypedArray for Char with get(self, index) {
  JTypedArray::_char_get(self, index)
}

///|
pub impl Js_TypedArray for Byte with get(self, index) {
  JTypedArray::_byte_get(self, index)
}

///|
pub impl Js_TypedArray for Int16 with get(self, index) {
  JTypedArray::_i16_get(self, index)
}

///|
pub impl Js_TypedArray for UInt16 with get(self, index) {
  JTypedArray::_u16_get(self, index)
}

///|
pub impl Js_TypedArray for Int64 with get(self, index) {
  JTypedArray::_i64_get(self, index)
}

///|
pub impl Js_TypedArray for UInt64 with get(self, index) {
  JTypedArray::_u64_get(self, index)
}
