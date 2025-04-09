///|
fn TypedArray::_length(self : TypedArray[Any]) -> Int = "illusory0x0_core_global" "length"

///|
pub fn TypedArray::length[T](self : TypedArray[T]) -> Int {
  coerce(TypedArray::_length)(self)
}

///|
pub fn TypedArray::op_get[T : Js_TypedArray](
  self : TypedArray[T],
  index : Int
) -> T {
  T::get(self, index)
}

///|
pub fn TypedArray::op_set[T : Js_TypedArray](
  self : TypedArray[T],
  index : Int,
  value : T
) -> Unit {
  T::set(self, index, value)
}

///|
pub fn TypedArray::make[T : Js_TypedArray](
  buffer : ArrayBuffer,
  byteOffset : Int,
  length : Int
) -> TypedArray[T] {
  T::new(buffer, byteOffset, length)
}

///|
