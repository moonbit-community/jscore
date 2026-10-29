///|
fn TypedArray::_u16_get(self : TypedArray[UInt16], index : Int32) -> UInt16 = "illusory0x0_core_global" "get"

///|
fn TypedArray::_i16_get(self : TypedArray[Int16], index : Int32) -> Int16 = "illusory0x0_core_global" "get"

///|
fn TypedArray::_byte_get(self : TypedArray[Byte], index : Int32) -> Byte = "illusory0x0_core_global" "get"

///|
fn TypedArray::_char_get(self : TypedArray[Char], index : Int32) -> Char = "illusory0x0_core_global" "get"

///|
fn TypedArray::_f64_get(self : TypedArray[Double], index : Int32) -> Double = "illusory0x0_core_global" "get"

///|
fn TypedArray::_f32_get(self : TypedArray[Float], index : Int32) -> Float = "illusory0x0_core_global" "get"

///|
fn TypedArray::_u32_get(self : TypedArray[UInt32], index : Int32) -> UInt32 = "illusory0x0_core_global" "get"

///|
fn TypedArray::_i32_get(self : TypedArray[Int32], index : Int32) -> Int32 = "illusory0x0_core_global" "get"

///|
fn TypedArray::_i64_get(self : TypedArray[Int64], index : Int32) -> Int64 = "illusory0x0_core_global" "get"

///|
fn TypedArray::_u64_get(self : TypedArray[UInt64], index : Int32) -> UInt64 = "illusory0x0_core_global" "get"

///|
pub impl Js_TypedArray for Int32 with fn get(self, index) {
  TypedArray::_i32_get(self, index)
}

///|
pub impl Js_TypedArray for UInt32 with fn get(self, index) {
  TypedArray::_u32_get(self, index)
}

///|
pub impl Js_TypedArray for Float with fn get(self, index) {
  TypedArray::_f32_get(self, index)
}

///|
pub impl Js_TypedArray for Double with fn get(self, index) {
  TypedArray::_f64_get(self, index)
}

///|
pub impl Js_TypedArray for Char with fn get(self, index) {
  TypedArray::_char_get(self, index)
}

///|
pub impl Js_TypedArray for Byte with fn get(self, index) {
  TypedArray::_byte_get(self, index)
}

///|
pub impl Js_TypedArray for Int16 with fn get(self, index) {
  TypedArray::_i16_get(self, index)
}

///|
pub impl Js_TypedArray for UInt16 with fn get(self, index) {
  TypedArray::_u16_get(self, index)
}

///|
pub impl Js_TypedArray for Int64 with fn get(self, index) {
  TypedArray::_i64_get(self, index)
}

///|
pub impl Js_TypedArray for UInt64 with fn get(self, index) {
  TypedArray::_u64_get(self, index)
}
