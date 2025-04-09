///|
fn JWeakRef::_deref(self : JWeakRef[JAny]) = "illusory0x0_core_WeakRef" "deref"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakRef/deref)
pub fn JWeakRef::deref[T : Js_Object](self : JWeakRef[T]) -> T? {
  let res = coerce(JWeakRef::_deref)(self)
  if res == js_undefined {
    None
  } else {
    Some(res |> Js::downcast)
  }
}
