///|

///|
fn Array::_length(self : Array[Any]) -> Int = "illusory0x0_core_global" "length"

///|
fn Array::_from(it : Iterator[Any]) -> Array[Any] = "illusory0x0_core_Array" "static_from"

///|
fn Array::_op_get(self : Array[Any], index : Int) -> Any {
  Any::get(self, index)
}

///|
fn Array::_op_set(self : Array[Any], index : Int, value : Any) -> Unit {
  Any::set(self, index, value)
}

///|
pub fn Array::empty[T]() -> Array[T] {
  coerce(Array::_empty())
}

///|
pub fn Array::op_get[T : Js](self : Array[T], index : Int) -> T {
  let arr : Array[Any] = coerce(self)
  arr._op_get(index) |> Js::downcast
}

///|
pub fn Array::op_set[T : Js](self : Array[T], index : Int, value : T) -> Unit {
  let arr : Array[Any] = coerce(self)
  arr._op_set(index, value.to_any())
}

///|
pub fn Array::get[T : Js_Array](self : Array[T], index : Int) -> T {
  T::get(self, index)
}

///|
pub fn Array::set[T : Js_Array](
  self : Array[T],
  index : Int,
  value : T
) -> Unit {
  T::set(self, index, value)
}

///|
pub fn Array::length[T](self : Array[T]) -> Int {
  coerce(Array::_length)(self)
}

///|
pub fn Array::from_builtin[T : Js](xs : @builtin.Array[T]) -> Array[T] {
  let res = Array::empty()
  for i, x in xs {
    res[i] = x
  }
  res
}

///|
pub fn Array::from_iterator[T](it : Iterator[T]) -> Array[T] {
  coerce(Array::_from)(it)
}
