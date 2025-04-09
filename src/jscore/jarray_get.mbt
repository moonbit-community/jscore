///|
fn JArray::_any_get(self : JArray[JAny], index : Int) -> JAny = "illusory0x0_core_global" "get"

///|
fn JArray::_u16_get(self : JArray[UInt16], index : Int) -> UInt16 = "illusory0x0_core_global" "get"

///|
fn JArray::_i16_get(self : JArray[Int16], index : Int) -> Int16 = "illusory0x0_core_global" "get"

///|
fn JArray::_byte_get(self : JArray[Byte], index : Int) -> Byte = "illusory0x0_core_global" "get"

///|
fn JArray::_char_get(self : JArray[Char], index : Int) -> Char = "illusory0x0_core_global" "get"

///|
fn JArray::_f64_get(self : JArray[Double], index : Int) -> Double = "illusory0x0_core_global" "get"

///|
fn JArray::_f32_get(self : JArray[Float], index : Int) -> Float = "illusory0x0_core_global" "get"

///|
fn JArray::_u32_get(self : JArray[UInt], index : Int) -> UInt = "illusory0x0_core_global" "get"

///|
fn JArray::_i32_get(self : JArray[Int], index : Int) -> Int = "illusory0x0_core_global" "get"

///|
fn JArray::_i64_get(self : JArray[Int64], index : Int) -> Int64 = "illusory0x0_core_global" "get"

///|
fn JArray::_u64_get(self : JArray[UInt64], index : Int) -> UInt64 = "illusory0x0_core_global" "get"

///|
fn JArray::_bool_get(self : JArray[Bool], index : Int) -> Bool = "illusory0x0_core_global" "get"

///|
pub impl Js_Array for Int with get(self, index) {
  JArray::_i32_get(self, index)
}

///|
pub impl Js_Array for UInt with get(self, index) {
  JArray::_u32_get(self, index)
}

///|
pub impl Js_Array for Float with get(self, index) {
  JArray::_f32_get(self, index)
}

///|
pub impl Js_Array for Double with get(self, index) {
  JArray::_f64_get(self, index)
}

///|
pub impl Js_Array for Char with get(self, index) {
  JArray::_char_get(self, index)
}

///|
pub impl Js_Array for Byte with get(self, index) {
  JArray::_byte_get(self, index)
}

///|
pub impl Js_Array for Int16 with get(self, index) {
  JArray::_i16_get(self, index)
}

///|
pub impl Js_Array for UInt16 with get(self, index) {
  JArray::_u16_get(self, index)
}

///|
pub impl Js_Array for JAny with get(self, index) {
  JArray::_any_get(self, index)
}

///|
pub impl Js_Array for Int64 with get(self, index) {
  JArray::_i64_get(self, index)
}

///|
pub impl Js_Array for UInt64 with get(self, index) {
  JArray::_u64_get(self, index)
}

///|
pub impl Js_Array for Bool with get(self, index) {
  JArray::_bool_get(self, index)
}
