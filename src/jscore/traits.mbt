///|
pub(open) trait Js {
  fn to_any(Self) -> Any
  fn downcast_(Any) -> Self = _
}

///|
pub trait Js_Array {
  fn get(Array[Self], Int32) -> Self
  fn set(Array[Self], Int32, Self) -> Unit
}

///|
pub trait Js_Error: Js {
  fn to_error(Self) -> Error_
  fn name(Self) -> String_ = _
  fn message(Self) -> String_ = _
  fn toString(Self) -> String_ = _
}

///|
pub trait Js_TypedArray {
  fn get(TypedArray[Self], Int32) -> Self
  fn set(TypedArray[Self], Int32, Self) -> Unit
  fn new(ArrayBuffer, Int32, Int32) -> TypedArray[Self]
}

///|
impl Js_Error with fn name(self) {
  self.to_error().name()
}

///|
impl Js_Error with fn message(self) {
  self.to_error().message()
}

///|
impl Js_Error with fn toString(self) {
  self.to_error().toString()
}

///|
pub trait Js_Object: Js {
  fn to_object(Self) -> Object
}
