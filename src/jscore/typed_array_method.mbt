///|
fn TypedArray::_length(self : TypedArray[Any]) -> Int = "illusory0x0_core_global" "length"

///|
pub fn[T] TypedArray::length(self : TypedArray[T]) -> Int {
  coerce(TypedArray::_length)(self)
}

///|
pub fn[T : Js_TypedArray] TypedArray::op_get(
  self : TypedArray[T],
  index : Int,
) -> T {
  T::get(self, index)
}

///|
pub fn[T : Js_TypedArray] TypedArray::op_set(
  self : TypedArray[T],
  index : Int,
  value : T,
) -> Unit {
  T::set(self, index, value)
}

///|
pub fn[T : Js_TypedArray] TypedArray::make(
  buffer : ArrayBuffer,
  byteOffset : Int,
  length : Int,
) -> TypedArray[T] {
  T::new(buffer, byteOffset, length)
}

///|
