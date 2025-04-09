///|
pub(open) trait Js {
  to_any(Self) -> Any
  downcast(Any) -> Self
}

///|
pub trait Js_Array {
  get(Array[Self], Int) -> Self
  set(Array[Self], Int, Self) -> Unit
}

///|
pub trait Js_Error: Js {
  to_error(Self) -> Error_
  name(Self) -> String_
  message(Self) -> String_
  toString(Self) -> String_
}

///|
pub trait Js_TypedArray {
  get(TypedArray[Self], Int) -> Self
  set(TypedArray[Self], Int, Self) -> Unit
  new(ArrayBuffer, Int, Int) -> TypedArray[Self]
}

///|
impl Js_Error with name(self) {
  self.to_error().name()
}

///|
impl Js_Error with message(self) {
  self.to_error().message()
}

///|
impl Js_Error with toString(self) {
  self.to_error().toString()
}

///|
pub trait Js_Object: Js {
  to_object(Self) -> Object
}
