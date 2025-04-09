///|
fn Array::_any_set(self : Array[Any], index : Int, value : Any) = "illusory0x0_core_global" "set"

///|
fn Array::_u16_set(self : Array[UInt16], index : Int, value : UInt16) = "illusory0x0_core_global" "set"

///|
fn Array::_i16_set(self : Array[Int16], index : Int, value : Int16) = "illusory0x0_core_global" "set"

///|

///|
fn Array::_byte_set(self : Array[Byte], index : Int, value : Byte) = "illusory0x0_core_global" "set"

///|
fn Array::_char_set(self : Array[Char], index : Int, value : Char) = "illusory0x0_core_global" "set"

///|
fn Array::_f64_set(self : Array[Double], index : Int, value : Double) = "illusory0x0_core_global" "set"

///|
fn Array::_f32_set(self : Array[Float], index : Int, value : Float) = "illusory0x0_core_global" "set"

///|
fn Array::_u32_set(self : Array[UInt], index : Int, value : UInt) = "illusory0x0_core_global" "set"

///|
fn Array::_i32_set(self : Array[Int], index : Int, value : Int) = "illusory0x0_core_global" "set"

///|
fn Array::_i64_set(self : Array[Int64], index : Int, value : Int64) = "illusory0x0_core_global" "set"

///|
fn Array::_u64_set(self : Array[UInt64], index : Int, value : UInt64) = "illusory0x0_core_global" "set"

///|
fn Array::_bool_set(self : Array[Bool], index : Int, value : Bool) = "illusory0x0_core_global" "set"

///|
pub impl Js_Array for Int with set(self, index, value) {
  Array::_i32_set(self, index, value)
}

///|
pub impl Js_Array for UInt with set(self, index, value) {
  Array::_u32_set(self, index, value)
}

///|
pub impl Js_Array for Float with set(self, index, value) {
  Array::_f32_set(self, index, value)
}

///|
pub impl Js_Array for Double with set(self, index, value) {
  Array::_f64_set(self, index, value)
}

///|
pub impl Js_Array for Char with set(self, index, value) {
  Array::_char_set(self, index, value)
}

///|
pub impl Js_Array for Byte with set(self, index, value) {
  Array::_byte_set(self, index, value)
}

///|
pub impl Js_Array for Int16 with set(self, index, value) {
  Array::_i16_set(self, index, value)
}

///|
pub impl Js_Array for UInt16 with set(self, index, value) {
  Array::_u16_set(self, index, value)
}

///|
pub impl Js_Array for Any with set(self, index, value) {
  Array::_any_set(self, index, value)
}

///|
pub impl Js_Array for Int64 with set(self, index, value) {
  Array::_i64_set(self, index, value)
}

///|
pub impl Js_Array for UInt64 with set(self, index, value) {
  Array::_u64_set(self, index, value)
}

///|
pub impl Js_Array for Bool with set(self, index, value) {
  Array::_bool_set(self, index, value)
}
