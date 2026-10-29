///|
fn Array::_any_get(self : Array[Any], index : Int32) -> Any = "illusory0x0_core_global" "get"

///|
fn Array::_u16_get(self : Array[UInt16], index : Int32) -> UInt16 = "illusory0x0_core_global" "get"

///|
fn Array::_i16_get(self : Array[Int16], index : Int32) -> Int16 = "illusory0x0_core_global" "get"

///|
fn Array::_byte_get(self : Array[Byte], index : Int32) -> Byte = "illusory0x0_core_global" "get"

///|
fn Array::_char_get(self : Array[Char], index : Int32) -> Char = "illusory0x0_core_global" "get"

///|
fn Array::_f64_get(self : Array[Double], index : Int32) -> Double = "illusory0x0_core_global" "get"

///|
fn Array::_f32_get(self : Array[Float], index : Int32) -> Float = "illusory0x0_core_global" "get"

///|
fn Array::_u32_get(self : Array[UInt32], index : Int32) -> UInt32 = "illusory0x0_core_global" "get"

///|
fn Array::_i32_get(self : Array[Int32], index : Int32) -> Int32 = "illusory0x0_core_global" "get"

///|
fn Array::_i64_get(self : Array[Int64], index : Int32) -> Int64 = "illusory0x0_core_global" "get"

///|
fn Array::_u64_get(self : Array[UInt64], index : Int32) -> UInt64 = "illusory0x0_core_global" "get"

///|
fn Array::_bool_get(self : Array[Bool], index : Int32) -> Bool = "illusory0x0_core_global" "get"

///|
pub impl Js_Array for Int32 with fn get(self, index) {
  Array::_i32_get(self, index)
}

///|
pub impl Js_Array for UInt32 with fn get(self, index) {
  Array::_u32_get(self, index)
}

///|
pub impl Js_Array for Float with fn get(self, index) {
  Array::_f32_get(self, index)
}

///|
pub impl Js_Array for Double with fn get(self, index) {
  Array::_f64_get(self, index)
}

///|
pub impl Js_Array for Char with fn get(self, index) {
  Array::_char_get(self, index)
}

///|
pub impl Js_Array for Byte with fn get(self, index) {
  Array::_byte_get(self, index)
}

///|
pub impl Js_Array for Int16 with fn get(self, index) {
  Array::_i16_get(self, index)
}

///|
pub impl Js_Array for UInt16 with fn get(self, index) {
  Array::_u16_get(self, index)
}

///|
pub impl Js_Array for Any with fn get(self, index) {
  Array::_any_get(self, index)
}

///|
pub impl Js_Array for Int64 with fn get(self, index) {
  Array::_i64_get(self, index)
}

///|
pub impl Js_Array for UInt64 with fn get(self, index) {
  Array::_u64_get(self, index)
}

///|
pub impl Js_Array for Bool with fn get(self, index) {
  Array::_bool_get(self, index)
}
