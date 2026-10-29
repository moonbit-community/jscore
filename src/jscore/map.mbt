///|
fn Map::_get(self : Map[Any, Any], index : Any) -> Any = "illusory0x0_core_Map" "get"

///|
fn Map::_set(self : Map[Any, Any], index : Any, value : Any) = "illusory0x0_core_Map" "set"

///|
fn Map::_has(self : Map[Any, Any], index : Any) -> Bool = "illusory0x0_core_Map" "has"

///|
fn Map::_delete(self : Map[Any, Any], index : Any) -> Bool = "illusory0x0_core_Map" "delete"

///|
fn Map::_clear(self : Map[Any, Any]) = "illusory0x0_core_Map" "clear"

// TODO
// fn Map::_forEach(self : Map[Any,Any]) = "illusory0x0_core_Map" "forEach"
// fn Map::_groupBy(self : Map[Any,Any]) = "illusory0x0_core_Map" "static_groupBy"

///|
fn Map::_keys(self : Map[Any, Any]) -> Array[Any] = "illusory0x0_core_Map" "keys"

///|
fn Map::_values(self : Map[Any, Any]) -> Array[Any] = "illusory0x0_core_Map" "values"

///|
fn Map::_size(self : Map[Any, Any]) -> Int32 = "illusory0x0_core_Map" "get_size"

///|
fn Map::_entries(self : Map[Any, Any]) -> Array[Array[Any]] = "illusory0x0_core_Map" "entries"

///|
/// [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/get)
pub fn[K : Js, V : Js] Map::op_get(self : Map[K, V], index : K) -> V? {
  let map : Map[Any, Any] = self |> coerce
  let res = map._get(index.to_any())
  if res == js_undefined {
    None
  } else {
    Some(Js::downcast_(res))
  }
}

///|
/// [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/set)
pub fn[K : Js, V : Js] Map::op_set(
  self : Map[K, V],
  index : K,
  value : V,
) -> Unit {
  let map : Map[Any, Any] = self |> coerce
  map._set(index.to_any(), value.to_any())
}

///|
/// [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/has)
pub fn[K : Js, V : Js] Map::has(self : Map[K, V], index : K) -> Bool {
  let map : Map[Any, Any] = self |> coerce
  map._has(index.to_any())
}

///|
/// [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/delete)
pub fn[K : Js, V : Js] Map::delete(self : Map[K, V], index : K) -> Bool {
  let map : Map[Any, Any] = self |> coerce
  map._delete(index.to_any())
}

///|
/// [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/clear)
pub fn[K, V] Map::clear(self : Map[K, V]) -> Unit {
  let map : Map[Any, Any] = self |> coerce
  map._clear()
}

///|
/// [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/size)
pub fn[K, V] Map::size(self : Map[K, V]) -> Int32 {
  let map : Map[Any, Any] = self |> coerce
  map._size()
}

///|
/// [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/entries)
pub fn[K, V] Map::entries(self : Map[K, V]) -> Iterator[Array[Any]] {
  coerce(Map::_entries)(self)
}

///|
/// [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/keys)
pub fn[K, V] Map::keys(self : Map[K, V]) -> Iterator[K] {
  coerce(Map::_keys)(self)
}

///|
/// [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/values)
pub fn[K, V] Map::values(self : Map[K, V]) -> Iterator[K] {
  coerce(Map::_values)(self)
}
