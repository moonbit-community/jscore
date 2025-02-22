///|
pub(open) trait Js {
  to_any(Self) -> JAny
  downcast(JAny) -> Self
}

///|
pub trait Js_Array {
  get(JArray[Self], Int) -> Self
  set(JArray[Self], Int, Self) -> Unit
}

///|
pub trait Js_Error: Js {
  to_error(Self) -> JError
  name(Self) -> JString
  message(Self) -> JString
  toString(Self) -> JString
}

///|
pub trait Js_TypedArray {
  get(JTypedArray[Self], Int) -> Self
  set(JTypedArray[Self], Int, Self) -> Unit
  new(JArrayBuffer, Int, Int) -> JTypedArray[Self]
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
  to_object(Self) -> JObject
}
