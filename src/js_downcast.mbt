///|
impl Js with downcast(self : JAny) -> Self = "%identity"

///|
fn _any_to_byte(x : JAny) -> Byte = "global" "coerce"

///|
fn _any_to_i16(x : JAny) -> Int16 = "global" "coerce"

///|
fn _any_to_u16(x : JAny) -> UInt16 = "global" "coerce"

///|
fn _any_to_u32(x : JAny) -> UInt = "global" "coerce"

///|
fn _any_to_u64(x : JAny) -> UInt64 = "global" "coerce"

///|
fn _any_to_i64(x : JAny) -> Int64 = "global" "coerce"

///|
fn _any_to_i32(x : JAny) -> Int = "global" "coerce"

///|
fn _any_to_f32(x : JAny) -> Float = "global" "coerce"

///|
fn _any_to_f64(x : JAny) -> Double = "global" "coerce"

///|
fn _any_to_bool(x : JAny) -> Bool = "global" "coerce"

///|
pub impl Js for Byte with downcast(x : JAny) -> Byte {
  _any_to_byte(x)
}

///|
pub impl Js for Int with downcast(x : JAny) -> Int {
  _any_to_i32(x)
}

///|
pub impl Js for Float with downcast(x : JAny) -> Float {
  _any_to_f32(x)
}

///|
pub impl Js for Double with downcast(x : JAny) -> Double {
  _any_to_f64(x)
}

///|
pub impl Js for UInt with downcast(x : JAny) -> UInt {
  _any_to_u32(x)
}

///|
pub impl Js for UInt64 with downcast(x : JAny) -> UInt64 {
  _any_to_u64(x)
}

///|
pub impl Js for Int64 with downcast(x : JAny) -> Int64 {
  _any_to_i64(x)
}

///|
pub impl Js for UInt16 with downcast(x : JAny) -> UInt16 {
  _any_to_u16(x)
}

///|
pub impl Js for Int16 with downcast(x : JAny) -> Int16 {
  _any_to_i16(x)
}

///|
pub impl Js for Bool with downcast(x : JAny) -> Bool {
  _any_to_bool(x)
}
