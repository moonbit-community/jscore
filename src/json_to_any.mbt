///|
fn map_to_any(map : Map[String, JAny]) -> JAny {
  let obj = JObject::empty()
  for key, val in map {
    obj[JTextDecoder::from_string(key)] = val.to_any()
  }
  obj.to_any()
}
