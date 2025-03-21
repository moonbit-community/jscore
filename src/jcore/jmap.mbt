///|
fn JMap::_get(self : JMap[JAny, JAny], index : JAny) -> JAny = "Map" "get"

///|
fn JMap::_set(self : JMap[JAny, JAny], index : JAny, value : JAny) = "Map" "set"

///|
fn JMap::_has(self : JMap[JAny, JAny], index : JAny) -> Bool = "Map" "has"

///|
fn JMap::_delete(self : JMap[JAny, JAny], index : JAny) -> Bool = "Map" "delete"

///|
fn JMap::_clear(self : JMap[JAny, JAny]) = "Map" "clear"

// TODO
// fn JMap::_forEach(self : JMap[JAny,JAny]) = "Map" "forEach"
// fn JMap::_groupBy(self : JMap[JAny,JAny]) = "Map" "static_groupBy"

///|
fn JMap::_keys(self : JMap[JAny, JAny]) -> JArray[JAny] = "Map" "keys"

///|
fn JMap::_values(self : JMap[JAny, JAny]) -> JArray[JAny] = "Map" "values"

///|
fn JMap::_size(self : JMap[JAny, JAny]) -> Int = "Map" "get_size"

///|
fn JMap::_entries(self : JMap[JAny, JAny]) -> JArray[JArray[JAny]] = "Map" "entries"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/get)
pub fn JMap::op_get[K : Js, V : Js](self : JMap[K, V], index : K) -> V? {
  let map : JMap[JAny, JAny] = self |> coerce
  let res = map._get(index.to_any())
  if res == js_undefined {
    None
  } else {
    Some(Js::downcast(res))
  }
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/set)
pub fn JMap::op_set[K : Js, V : Js](
  self : JMap[K, V],
  index : K,
  value : V
) -> Unit {
  let map : JMap[JAny, JAny] = self |> coerce
  map._set(index.to_any(), value.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/has)
pub fn JMap::has[K : Js, V : Js](self : JMap[K, V], index : K) -> Bool {
  let map : JMap[JAny, JAny] = self |> coerce
  map._has(index.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/delete)
pub fn JMap::delete[K : Js, V : Js](self : JMap[K, V], index : K) -> Bool {
  let map : JMap[JAny, JAny] = self |> coerce
  map._delete(index.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/clear)
pub fn JMap::clear[K, V](self : JMap[K, V]) -> Unit {
  let map : JMap[JAny, JAny] = self |> coerce
  map._clear()
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/size)
pub fn JMap::size[K, V](self : JMap[K, V]) -> Int {
  let map : JMap[JAny, JAny] = self |> coerce
  map._size()
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/entries)
pub fn JMap::entries[K, V](self : JMap[K, V]) -> JIterator[JArray[JAny]] {
  coerce(JMap::_entries)(self)
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/keys)
pub fn JMap::keys[K, V](self : JMap[K, V]) -> JIterator[K] {
  coerce(JMap::_keys)(self)
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map/values)
pub fn JMap::values[K, V](self : JMap[K, V]) -> JIterator[K] {
  coerce(JMap::_values)(self)
}
