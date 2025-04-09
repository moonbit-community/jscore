///|
fn Array::_any_get(self : Array[Any], index : Int) -> Any = "illusory0x0_core_global" "get"

///|
fn Array::_u16_get(self : Array[UInt16], index : Int) -> UInt16 = "illusory0x0_core_global" "get"

///|
fn Array::_i16_get(self : Array[Int16], index : Int) -> Int16 = "illusory0x0_core_global" "get"

///|
fn Array::_byte_get(self : Array[Byte], index : Int) -> Byte = "illusory0x0_core_global" "get"

///|
fn Array::_char_get(self : Array[Char], index : Int) -> Char = "illusory0x0_core_global" "get"

///|
fn Array::_f64_get(self : Array[Double], index : Int) -> Double = "illusory0x0_core_global" "get"

///|
fn Array::_f32_get(self : Array[Float], index : Int) -> Float = "illusory0x0_core_global" "get"

///|
fn Array::_u32_get(self : Array[UInt], index : Int) -> UInt = "illusory0x0_core_global" "get"

///|
fn Array::_i32_get(self : Array[Int], index : Int) -> Int = "illusory0x0_core_global" "get"

///|
fn Array::_i64_get(self : Array[Int64], index : Int) -> Int64 = "illusory0x0_core_global" "get"

///|
fn Array::_u64_get(self : Array[UInt64], index : Int) -> UInt64 = "illusory0x0_core_global" "get"

///|
fn Array::_bool_get(self : Array[Bool], index : Int) -> Bool = "illusory0x0_core_global" "get"

///|
pub impl Js_Array for Int with get(self, index) {
  Array::_i32_get(self, index)
}

///|
pub impl Js_Array for UInt with get(self, index) {
  Array::_u32_get(self, index)
}

///|
pub impl Js_Array for Float with get(self, index) {
  Array::_f32_get(self, index)
}

///|
pub impl Js_Array for Double with get(self, index) {
  Array::_f64_get(self, index)
}

///|
pub impl Js_Array for Char with get(self, index) {
  Array::_char_get(self, index)
}

///|
pub impl Js_Array for Byte with get(self, index) {
  Array::_byte_get(self, index)
}

///|
pub impl Js_Array for Int16 with get(self, index) {
  Array::_i16_get(self, index)
}

///|
pub impl Js_Array for UInt16 with get(self, index) {
  Array::_u16_get(self, index)
}

///|
pub impl Js_Array for Any with get(self, index) {
  Array::_any_get(self, index)
}

///|
pub impl Js_Array for Int64 with get(self, index) {
  Array::_i64_get(self, index)
}

///|
pub impl Js_Array for UInt64 with get(self, index) {
  Array::_u64_get(self, index)
}

///|
pub impl Js_Array for Bool with get(self, index) {
  Array::_bool_get(self, index)
}
