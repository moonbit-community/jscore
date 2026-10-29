///|
fn Array::_any_set(self : Array[Any], index : Int32, value : Any) = "illusory0x0_core_global" "set"

///|
fn Array::_u16_set(self : Array[UInt16], index : Int32, value : UInt16) = "illusory0x0_core_global" "set"

///|
fn Array::_i16_set(self : Array[Int16], index : Int32, value : Int16) = "illusory0x0_core_global" "set"

///|

///|
fn Array::_byte_set(self : Array[Byte], index : Int32, value : Byte) = "illusory0x0_core_global" "set"

///|
fn Array::_char_set(self : Array[Char], index : Int32, value : Char) = "illusory0x0_core_global" "set"

///|
fn Array::_f64_set(self : Array[Double], index : Int32, value : Double) = "illusory0x0_core_global" "set"

///|
fn Array::_f32_set(self : Array[Float], index : Int32, value : Float) = "illusory0x0_core_global" "set"

///|
fn Array::_u32_set(self : Array[UInt32], index : Int32, value : UInt32) = "illusory0x0_core_global" "set"

///|
fn Array::_i32_set(self : Array[Int32], index : Int32, value : Int32) = "illusory0x0_core_global" "set"

///|
fn Array::_i64_set(self : Array[Int64], index : Int32, value : Int64) = "illusory0x0_core_global" "set"

///|
fn Array::_u64_set(self : Array[UInt64], index : Int32, value : UInt64) = "illusory0x0_core_global" "set"

///|
fn Array::_bool_set(self : Array[Bool], index : Int32, value : Bool) = "illusory0x0_core_global" "set"

///|
pub impl Js_Array for Int32 with fn set(self, index, value) {
  Array::_i32_set(self, index, value)
}

///|
pub impl Js_Array for UInt32 with fn set(self, index, value) {
  Array::_u32_set(self, index, value)
}

///|
pub impl Js_Array for Float with fn set(self, index, value) {
  Array::_f32_set(self, index, value)
}

///|
pub impl Js_Array for Double with fn set(self, index, value) {
  Array::_f64_set(self, index, value)
}

///|
pub impl Js_Array for Char with fn set(self, index, value) {
  Array::_char_set(self, index, value)
}

///|
pub impl Js_Array for Byte with fn set(self, index, value) {
  Array::_byte_set(self, index, value)
}

///|
pub impl Js_Array for Int16 with fn set(self, index, value) {
  Array::_i16_set(self, index, value)
}

///|
pub impl Js_Array for UInt16 with fn set(self, index, value) {
  Array::_u16_set(self, index, value)
}

///|
pub impl Js_Array for Any with fn set(self, index, value) {
  Array::_any_set(self, index, value)
}

///|
pub impl Js_Array for Int64 with fn set(self, index, value) {
  Array::_i64_set(self, index, value)
}

///|
pub impl Js_Array for UInt64 with fn set(self, index, value) {
  Array::_u64_set(self, index, value)
}

///|
pub impl Js_Array for Bool with fn set(self, index, value) {
  Array::_bool_set(self, index, value)
}
