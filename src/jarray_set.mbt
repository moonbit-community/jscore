///|
fn JArray::_any_set(self : JArray[JAny], index : Int, value : JAny) = "global" "set"

///|
fn JArray::_u16_set(self : JArray[UInt16], index : Int, value : UInt16) = "global" "set"

///|
fn JArray::_i16_set(self : JArray[Int16], index : Int, value : Int16) = "global" "set"

///|

///|
fn JArray::_byte_set(self : JArray[Byte], index : Int, value : Byte) = "global" "set"

///|
fn JArray::_char_set(self : JArray[Char], index : Int, value : Char) = "global" "set"

///|
fn JArray::_f64_set(self : JArray[Double], index : Int, value : Double) = "global" "set"

///|
fn JArray::_f32_set(self : JArray[Float], index : Int, value : Float) = "global" "set"

///|
fn JArray::_u32_set(self : JArray[UInt], index : Int, value : UInt) = "global" "set"

///|
fn JArray::_i32_set(self : JArray[Int], index : Int, value : Int) = "global" "set"

///|
fn JArray::_i64_set(self : JArray[Int64], index : Int, value : Int64) = "global" "set"

///|
fn JArray::_u64_set(self : JArray[UInt64], index : Int, value : UInt64) = "global" "set"

///|
fn JArray::_bool_set(self : JArray[Bool], index : Int, value : Bool) = "global" "set"

///|
pub impl Js_Array for Int with set(self, index, value) {
  JArray::_i32_set(self, index, value)
}

///|
pub impl Js_Array for UInt with set(self, index, value) {
  JArray::_u32_set(self, index, value)
}

///|
pub impl Js_Array for Float with set(self, index, value) {
  JArray::_f32_set(self, index, value)
}

///|
pub impl Js_Array for Double with set(self, index, value) {
  JArray::_f64_set(self, index, value)
}

///|
pub impl Js_Array for Char with set(self, index, value) {
  JArray::_char_set(self, index, value)
}

///|
pub impl Js_Array for Byte with set(self, index, value) {
  JArray::_byte_set(self, index, value)
}

///|
pub impl Js_Array for Int16 with set(self, index, value) {
  JArray::_i16_set(self, index, value)
}

///|
pub impl Js_Array for UInt16 with set(self, index, value) {
  JArray::_u16_set(self, index, value)
}

///|
pub impl Js_Array for JAny with set(self, index, value) {
  JArray::_any_set(self, index, value)
}

///|
pub impl Js_Array for Int64 with set(self, index, value) {
  JArray::_i64_set(self, index, value)
}

///|
pub impl Js_Array for UInt64 with set(self, index, value) {
  JArray::_u64_set(self, index, value)
}

///|
pub impl Js_Array for Bool with set(self, index, value) {
  JArray::_bool_set(self, index, value)
}
