///|
fn Set::_has(self : Set[Any], value : Any) -> Bool = "illusory0x0_core_Set" "has"

///|
fn Set::_add(self : Set[Any], value : Any) = "illusory0x0_core_Set" "add"

///|
fn Set::_delete(self : Set[Any], value : Any) = "illusory0x0_core_Set" "delete"

///|
fn Set::_clear(self : Set[Any]) = "illusory0x0_core_Set" "clear"

///|
fn Set::_size(self : Set[Any]) -> Int = "illusory0x0_core_Set" "get_size"

///|
fn Set::_entries(self : Set[Any]) -> Iterator[Any] = "illusory0x0_core_Set" "entries"

///|
fn Set::_values(self : Set[Any]) -> Iterator[Any] = "illusory0x0_core_Set" "values"

///|
fn Set::_keys(self : Set[Any]) -> Iterator[Any] = "illusory0x0_core_Set" "keys"

///|
fn Set::_union(self : Set[Any], other : Set[Any]) -> Set[Any] = "illusory0x0_core_Set" "union"

///|
fn Set::_intersection(self : Set[Any], other : Set[Any]) -> Set[Any] = "illusory0x0_core_Set" "intersection"

///|
fn Set::_difference(self : Set[Any], other : Set[Any]) -> Set[Any] = "illusory0x0_core_Set" "difference"

///|
fn Set::_symmetricDifference(
  self : Set[Any],
  other : Set[Any]
) -> Set[Any] = "illusory0x0_core_Set" "symmetricDifference"

///|
fn Set::_isSubsetOf(self : Set[Any], other : Set[Any]) -> Bool = "illusory0x0_core_Set" "isSubsetOf"

///|
fn Set::_isSupersetOf(self : Set[Any], ohter : Set[Any]) -> Bool = "illusory0x0_core_Set" "isSupersetOf"

///|
fn Set::_isDisjointFrom(self : Set[Any], other : Set[Any]) -> Bool = "illusory0x0_core_Set" "isDisjointFrom"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/has)
pub fn Set::has[T : Js](self : Set[T], value : T) -> Bool {
  coerce(Set::_has)(self, value.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/add)
pub fn Set::add[T : Js](self : Set[T], value : T) -> Unit {
  coerce(Set::_add)(self, value.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/delete)
pub fn Set::delete[T : Js](self : Set[T], value : T) -> Unit {
  coerce(Set::_delete)(self, value.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/clear)
pub fn Set::clear[T](self : Set[T]) -> Unit {
  coerce(Set::_clear)(self)
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/entries)
pub fn Set::entries[T](self : Set[T]) -> Iterator[Array[Any]] {
  coerce(Set::_entries)(self)
}

// TODO
///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/forEach)
// fn Set::forEach(self : Set[Any]) = "illusory0x0_core_Set" "forEach"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/size)
pub fn Set::size[T](self : Set[T]) -> Int {
  coerce(Set::_size)(self)
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/values)
pub fn Set::values[T](self : Set[T]) -> Iterator[T] {
  coerce(Set::_values)(self)
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/keys)
pub fn Set::keys[T](self : Set[T]) -> Iterator[T] {
  coerce(Set::_keys)(self)
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/union)
pub fn Set::union[T](self : Set[T], other : Set[T]) -> Set[T] {
  coerce(Set::_union)(self, other)
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/intersection)
pub fn Set::intersection[T](self : Set[T], other : Set[T]) -> Set[T] {
  coerce(Set::_intersection)(self, other)
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/difference)
pub fn Set::difference[T](self : Set[T], other : Set[T]) -> Set[T] {
  coerce(Set::_difference)(self, other)
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/symmetricDifference)
pub fn Set::symmetricDifference[T](self : Set[T], other : Set[T]) -> Set[T] {
  coerce(Set::_symmetricDifference)(self, other)
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/isSubsetOf)
pub fn Set::isSubsetOf[T](self : Set[T], other : Set[T]) -> Bool {
  coerce(Set::_isSubsetOf)(self, other)
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/isSupersetOf)
pub fn Set::isSupersetOf[T](self : Set[T], other : Set[T]) -> Bool {
  coerce(Set::_isSupersetOf)(self, other)
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/isDisjointFrom)
pub fn Set::isDisjointFrom[T](self : Set[T], other : Set[T]) -> Bool {
  coerce(Set::_isDisjointFrom)(self, other)
}
