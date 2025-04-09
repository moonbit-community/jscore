///|
fn JTypedArray::_length(self : JTypedArray[JAny]) -> Int = "illusory0x0_core_global" "length"

///|
pub fn JTypedArray::length[T](self : JTypedArray[T]) -> Int {
  coerce(JTypedArray::_length)(self)
}

///|
pub fn JTypedArray::op_get[T : Js_TypedArray](
  self : JTypedArray[T],
  index : Int
) -> T {
  T::get(self, index)
}

///|
pub fn JTypedArray::op_set[T : Js_TypedArray](
  self : JTypedArray[T],
  index : Int,
  value : T
) -> Unit {
  T::set(self, index, value)
}

///|
pub fn JTypedArray::make[T : Js_TypedArray](
  buffer : JArrayBuffer,
  byteOffset : Int,
  length : Int
) -> JTypedArray[T] {
  T::new(buffer, byteOffset, length)
}

///|
