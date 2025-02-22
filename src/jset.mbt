///|
fn JSet::_has(self : JSet[JAny], value : JAny) -> Bool = "Set" "has"

///|
fn JSet::_add(self : JSet[JAny], value : JAny) = "Set" "add"

///|
fn JSet::_delete(self : JSet[JAny], value : JAny) = "Set" "delete"

///|
fn JSet::_clear(self : JSet[JAny]) = "Set" "clear"

///|
fn JSet::_size(self : JSet[JAny]) -> Int = "Set" "get_size"

///|
fn JSet::_entries(self : JSet[JAny]) -> JIterator[JAny] = "Set" "entries"

///|
fn JSet::_values(self : JSet[JAny]) -> JIterator[JAny] = "Set" "values"

///|
fn JSet::_keys(self : JSet[JAny]) -> JIterator[JAny] = "Set" "keys"

///|
fn JSet::_union(self : JSet[JAny], other : JSet[JAny]) -> JSet[JAny] = "Set" "union"

///|
fn JSet::_intersection(self : JSet[JAny], other : JSet[JAny]) -> JSet[JAny] = "Set" "intersection"

///|
fn JSet::_difference(self : JSet[JAny], other : JSet[JAny]) -> JSet[JAny] = "Set" "difference"

///|
fn JSet::_symmetricDifference(
  self : JSet[JAny],
  other : JSet[JAny]
) -> JSet[JAny] = "Set" "symmetricDifference"

///|
fn JSet::_isSubsetOf(self : JSet[JAny], other : JSet[JAny]) -> Bool = "Set" "isSubsetOf"

///|
fn JSet::_isSupersetOf(self : JSet[JAny], ohter : JSet[JAny]) -> Bool = "Set" "isSupersetOf"

///|
fn JSet::_isDisjointFrom(self : JSet[JAny], other : JSet[JAny]) -> Bool = "Set" "isDisjointFrom"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/has)
pub fn JSet::has[T : Js](self : JSet[T], value : T) -> Bool {
  coerce(JSet::_has)(self, value.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/add)
pub fn JSet::add[T : Js](self : JSet[T], value : T) -> Unit {
  coerce(JSet::_add)(self, value.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/delete)
pub fn JSet::delete[T : Js](self : JSet[T], value : T) -> Unit {
  coerce(JSet::_delete)(self, value.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/clear)
pub fn JSet::clear[T](self : JSet[T]) -> Unit {
  coerce(JSet::_clear)(self)
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/entries)
pub fn JSet::entries[T](self : JSet[T]) -> JIterator[JArray[JAny]] {
  coerce(JSet::_entries)(self)
}

// TODO
///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/forEach)
// fn JSet::forEach(self : JSet[JAny]) = "Set" "forEach"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/size)
pub fn JSet::size[T](self : JSet[T]) -> Int {
  coerce(JSet::_size)(self)
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/values)
pub fn JSet::values[T](self : JSet[T]) -> JIterator[T] {
  coerce(JSet::_values)(self)
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/keys)
pub fn JSet::keys[T](self : JSet[T]) -> JIterator[T] {
  coerce(JSet::_keys)(self)
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/union)
pub fn JSet::union[T](self : JSet[T], other : JSet[T]) -> JSet[T] {
  coerce(JSet::_union)(self, other)
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/intersection)
pub fn JSet::intersection[T](self : JSet[T], other : JSet[T]) -> JSet[T] {
  coerce(JSet::_intersection)(self, other)
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/difference)
pub fn JSet::difference[T](self : JSet[T], other : JSet[T]) -> JSet[T] {
  coerce(JSet::_difference)(self, other)
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/symmetricDifference)
pub fn JSet::symmetricDifference[T](self : JSet[T], other : JSet[T]) -> JSet[T] {
  coerce(JSet::_symmetricDifference)(self, other)
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/isSubsetOf)
pub fn JSet::isSubsetOf[T](self : JSet[T], other : JSet[T]) -> Bool {
  coerce(JSet::_isSubsetOf)(self, other)
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/isSupersetOf)
pub fn JSet::isSupersetOf[T](self : JSet[T], other : JSet[T]) -> Bool {
  coerce(JSet::_isSupersetOf)(self, other)
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/isDisjointFrom)
pub fn JSet::isDisjointFrom[T](self : JSet[T], other : JSet[T]) -> Bool {
  coerce(JSet::_isDisjointFrom)(self, other)
}
