///|
fn WeakMap::_get(self : WeakMap[Any, Any], index : Any) -> Any = "illusory0x0_core_WeakMap" "get"

///|
fn WeakMap::_set(self : WeakMap[Any, Any], index : Any, value : Any) = "illusory0x0_core_WeakMap" "set"

///|
fn WeakMap::_has(self : WeakMap[Any, Any], index : Any) -> Bool = "illusory0x0_core_WeakMap" "has"

///|
fn WeakMap::_delete(self : WeakMap[Any, Any], index : Any) -> Bool = "illusory0x0_core_WeakMap" "delete"

///|
/// [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakMap/get)
pub fn[K : Js_Object, V : Js_Object] WeakMap::op_get(
  self : WeakMap[K, V],
  index : K,
) -> V? {
  let map : WeakMap[Any, Any] = self |> coerce
  let res = map._get(index.to_any())
  if res == js_undefined {
    None
  } else {
    Some(Js::downcast_(res))
  }
}

///|
/// [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakMap/set)
pub fn[K : Js_Object, V : Js_Object] WeakMap::op_set(
  self : WeakMap[K, V],
  index : K,
  value : V,
) -> Unit {
  let map : WeakMap[Any, Any] = self |> coerce
  map._set(index.to_any(), value.to_any())
}

///|
/// [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakMap/has)
pub fn[K : Js_Object, V : Js_Object] WeakMap::has(
  self : WeakMap[K, V],
  index : K,
) -> Bool {
  let map : WeakMap[Any, Any] = self |> coerce
  map._has(index.to_any())
}

///|
/// [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakMap/delete)
pub fn[K : Js_Object, V : Js_Object] WeakMap::delete(
  self : WeakMap[K, V],
  index : K,
) -> Bool {
  let map : WeakMap[Any, Any] = self |> coerce
  map._delete(index.to_any())
}
