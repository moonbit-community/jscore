///|
fn JWeakSet::_has(self : JWeakSet[JAny], value : JAny) -> Bool = "illusory0x0_core_WeakSet" "has"

///|
fn JWeakSet::_add(self : JWeakSet[JAny], value : JAny) = "illusory0x0_core_WeakSet" "add"

///|
fn JWeakSet::_delete(self : JWeakSet[JAny], value : JAny) = "illusory0x0_core_WeakSet" "delete"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakSet/has)
pub fn JWeakSet::has[T : Js_Object](self : JWeakSet[T], value : T) -> Bool {
  coerce(JWeakSet::_has)(self, value.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakSet/add)
pub fn JWeakSet::add[T : Js_Object](self : JWeakSet[T], value : T) -> Unit {
  coerce(JWeakSet::_add)(self, value.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakSet/delete)
pub fn JWeakSet::delete[T : Js_Object](self : JWeakSet[T], value : T) -> Unit {
  coerce(JWeakSet::_delete)(self, value.to_any())
}
