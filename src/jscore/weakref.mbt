///|
fn WeakRef::_deref(self : WeakRef[Any]) = "illusory0x0_core_WeakRef" "deref"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakRef/deref)
pub fn WeakRef::deref[T : Js_Object](self : WeakRef[T]) -> T? {
  let res = coerce(WeakRef::_deref)(self)
  if res == js_undefined {
    None
  } else {
    Some(res |> Js::downcast)
  }
}
