///|

///|
fn Array::_length(self : Array[Any]) -> Int32 = "illusory0x0_core_global" "length"

///|
fn Array::_from(it : Iterator[Any]) -> Array[Any] = "illusory0x0_core_Array" "static_from"

///|
fn Array::_op_get(self : Array[Any], index : Int32) -> Any {
  Any::get(self, index)
}

///|
fn Array::_op_set(self : Array[Any], index : Int32, value : Any) -> Unit {
  Any::set(self, index, value)
}

///|
pub fn[T] Array::empty() -> Array[T] {
  coerce(Array::_empty())
}

///|
pub fn[T : Js] Array::op_get(self : Array[T], index : Int32) -> T {
  let arr : Array[Any] = coerce(self)
  arr._op_get(index) |> Js::downcast_
}

///|
pub fn[T : Js] Array::op_set(self : Array[T], index : Int32, value : T) -> Unit {
  let arr : Array[Any] = coerce(self)
  arr._op_set(index, value.to_any())
}

///|
pub fn[T : Js_Array] Array::get(self : Array[T], index : Int32) -> T {
  T::get(self, index)
}

///|
pub fn[T : Js_Array] Array::set(
  self : Array[T],
  index : Int32,
  value : T,
) -> Unit {
  T::set(self, index, value)
}

///|
pub fn[T] Array::length(self : Array[T]) -> Int32 {
  coerce(Array::_length)(self)
}

///|
pub fn[T : Js] Array::from_builtin(xs : @builtin.Array[T]) -> Array[T] {
  let res = Array::empty()
  for i, x in xs {
    res[i] = x
  }
  res
}

///|
pub fn[T] Array::from_iterator(it : Iterator[T]) -> Array[T] {
  coerce(Array::_from)(it)
}
