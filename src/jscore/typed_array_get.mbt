///|
fn TypedArray::_u16_get(self : TypedArray[UInt16], index : Int) -> UInt16 = "illusory0x0_core_global" "get"

///|
fn TypedArray::_i16_get(self : TypedArray[Int16], index : Int) -> Int16 = "illusory0x0_core_global" "get"

///|
fn TypedArray::_byte_get(self : TypedArray[Byte], index : Int) -> Byte = "illusory0x0_core_global" "get"

///|
fn TypedArray::_char_get(self : TypedArray[Char], index : Int) -> Char = "illusory0x0_core_global" "get"

///|
fn TypedArray::_f64_get(self : TypedArray[Double], index : Int) -> Double = "illusory0x0_core_global" "get"

///|
fn TypedArray::_f32_get(self : TypedArray[Float], index : Int) -> Float = "illusory0x0_core_global" "get"

///|
fn TypedArray::_u32_get(self : TypedArray[UInt], index : Int) -> UInt = "illusory0x0_core_global" "get"

///|
fn TypedArray::_i32_get(self : TypedArray[Int], index : Int) -> Int = "illusory0x0_core_global" "get"

///|
fn TypedArray::_i64_get(self : TypedArray[Int64], index : Int) -> Int64 = "illusory0x0_core_global" "get"

///|
fn TypedArray::_u64_get(self : TypedArray[UInt64], index : Int) -> UInt64 = "illusory0x0_core_global" "get"

///|
pub impl Js_TypedArray for Int with get(self, index) {
  TypedArray::_i32_get(self, index)
}

///|
pub impl Js_TypedArray for UInt with get(self, index) {
  TypedArray::_u32_get(self, index)
}

///|
pub impl Js_TypedArray for Float with get(self, index) {
  TypedArray::_f32_get(self, index)
}

///|
pub impl Js_TypedArray for Double with get(self, index) {
  TypedArray::_f64_get(self, index)
}

///|
pub impl Js_TypedArray for Char with get(self, index) {
  TypedArray::_char_get(self, index)
}

///|
pub impl Js_TypedArray for Byte with get(self, index) {
  TypedArray::_byte_get(self, index)
}

///|
pub impl Js_TypedArray for Int16 with get(self, index) {
  TypedArray::_i16_get(self, index)
}

///|
pub impl Js_TypedArray for UInt16 with get(self, index) {
  TypedArray::_u16_get(self, index)
}

///|
pub impl Js_TypedArray for Int64 with get(self, index) {
  TypedArray::_i64_get(self, index)
}

///|
pub impl Js_TypedArray for UInt64 with get(self, index) {
  TypedArray::_u64_get(self, index)
}
