///|
fn JWeakMap::_get(self : JWeakMap[JAny, JAny], index : JAny) -> JAny = "WeakMap" "get"

///|
fn JWeakMap::_set(self : JWeakMap[JAny, JAny], index : JAny, value : JAny) = "WeakMap" "set"

///|
fn JWeakMap::_has(self : JWeakMap[JAny, JAny], index : JAny) -> Bool = "WeakMap" "has"

///|
fn JWeakMap::_delete(self : JWeakMap[JAny, JAny], index : JAny) -> Bool = "WeakMap" "delete"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakMap/get)
pub fn JWeakMap::op_get[K : Js_Object, V : Js_Object](
  self : JWeakMap[K, V],
  index : K
) -> V? {
  let map : JWeakMap[JAny, JAny] = self |> coerce
  let res = map._get(index.to_any())
  if res == js_undefined {
    None
  } else {
    Some(Js::downcast(res))
  }
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakMap/set)
pub fn JWeakMap::op_set[K : Js_Object, V : Js_Object](
  self : JWeakMap[K, V],
  index : K,
  value : V
) -> Unit {
  let map : JWeakMap[JAny, JAny] = self |> coerce
  map._set(index.to_any(), value.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakMap/has)
pub fn JWeakMap::has[K : Js_Object, V : Js_Object](
  self : JWeakMap[K, V],
  index : K
) -> Bool {
  let map : JWeakMap[JAny, JAny] = self |> coerce
  map._has(index.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakMap/delete)
pub fn JWeakMap::delete[K : Js_Object, V : Js_Object](
  self : JWeakMap[K, V],
  index : K
) -> Bool {
  let map : JWeakMap[JAny, JAny] = self |> coerce
  map._delete(index.to_any())
}
