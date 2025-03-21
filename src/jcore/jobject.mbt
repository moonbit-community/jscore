///|
pub fn JObject::empty() -> JObject = "new" "Object"

///|
pub fn JObject::op_get(self : JObject, key : JString) -> JAny = "global" "get"

///|
pub fn JObject::op_set(self : JObject, key : JString, value : JAny) = "global" "set"
