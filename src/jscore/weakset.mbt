///|
fn WeakSet::_has(self : WeakSet[Any], value : Any) -> Bool = "illusory0x0_core_WeakSet" "has"

///|
fn WeakSet::_add(self : WeakSet[Any], value : Any) = "illusory0x0_core_WeakSet" "add"

///|
fn WeakSet::_delete(self : WeakSet[Any], value : Any) = "illusory0x0_core_WeakSet" "delete"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakSet/has)
pub fn WeakSet::has[T : Js_Object](self : WeakSet[T], value : T) -> Bool {
  coerce(WeakSet::_has)(self, value.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakSet/add)
pub fn WeakSet::add[T : Js_Object](self : WeakSet[T], value : T) -> Unit {
  coerce(WeakSet::_add)(self, value.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakSet/delete)
pub fn WeakSet::delete[T : Js_Object](self : WeakSet[T], value : T) -> Unit {
  coerce(WeakSet::_delete)(self, value.to_any())
}
