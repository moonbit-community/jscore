///|
fn JArray::_empty() -> JArray[JAny] = "new" "Array"

///|
fn JArray::_length(self : JArray[JAny]) -> Int = "global" "length"

///|
fn JArray::_from(it : JIterator[JAny]) -> JArray[JAny] = "Array" "static_from"

///|
fn JArray::_op_get(self : JArray[JAny], index : Int) -> JAny {
  JAny::get(self, index)
}

///|
fn JArray::_op_set(self : JArray[JAny], index : Int, value : JAny) -> Unit {
  JAny::set(self, index, value)
}

///|
pub fn JArray::empty[T]() -> JArray[T] {
  coerce(JArray::_empty())
}

///|
pub fn JArray::op_get[T : Js](self : JArray[T], index : Int) -> T {
  let arr : JArray[JAny] = coerce(self)
  arr._op_get(index) |> Js::downcast
}

///|
pub fn JArray::op_set[T : Js](self : JArray[T], index : Int, value : T) -> Unit {
  let arr : JArray[JAny] = coerce(self)
  arr._op_set(index, value.to_any())
}

///|
pub fn JArray::get[T : Js_Array](self : JArray[T], index : Int) -> T {
  T::get(self, index)
}

///|
pub fn JArray::set[T : Js_Array](
  self : JArray[T],
  index : Int,
  value : T
) -> Unit {
  T::set(self, index, value)
}

///|
pub fn JArray::length[T](self : JArray[T]) -> Int {
  coerce(JArray::_length)(self)
}

///|
pub fn JArray::from_array[T : Js](xs : Array[T]) -> JArray[T] {
  let res = JArray::empty()
  for i, x in xs {
    res[i] = x
  }
  res
}

///|
pub fn JArray::from_iterator[T](it : JIterator[T]) -> JArray[T] {
  coerce(JArray::_from)(it)
}
