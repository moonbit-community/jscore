///|
fn _true() -> JAny = "illusory0x0_core_global" "true"

///|
fn _false() -> JAny = "illusory0x0_core_global" "false"

///|
fn _null() -> JAny = "illusory0x0_core_global" "null"

///|
fn _undefined() -> JAny = "illusory0x0_core_global" "undefined"

///|
fn js_typeof(self : JAny) -> JString = "illusory0x0_core_global" "typeof"

///|
fn js_instanceof(self : JAny, constructor : JAny) -> Bool = "illusory0x0_core_global" "instanceof"

///|
fn js_equal(self : JAny, other : JAny) -> Bool = "illusory0x0_core_global" "equal"

///|
impl Eq for JAny with op_equal(self, other) {
  self.js_equal(other)
}

///|
pub let js_true : JAny = _true()

///|
pub let js_false : JAny = _false()

///|
pub let js_null : JAny = _null()

///|
pub let js_undefined : JAny = _undefined()

///|
pub fn js_try_catch_finally(
  fn_try : () -> Unit,
  fn_catch : (JError) -> Unit,
  fn_finally : () -> Unit
) = "illusory0x0_core_global" "try_catch_finally"

///|
pub fn js_throw(e : JError) = "illusory0x0_core_global" "throw_error"

///|
fn _utf16Decoder() -> JTextDecoder = "illusory0x0_core_global" "utf16Decoder"

///|
pub let utf16Decoder : JTextDecoder = _utf16Decoder()

///|
let buffer : Ref[JArrayBuffer] = Ref::new(JArrayBuffer::new(8192 << 1))

///|
fn _console() -> JConsole = "illusory0x0_core_global" "console"

///|
pub let console : JConsole = _console()

///|
pub fn JTextDecoder::from_string(str : String) -> JString {
  let slen = str.length()
  let blen = slen << 1
  if blen >= buffer.val.byteLength() {
    buffer.val = JArrayBuffer::new(blen)
  }
  let buf = buffer.val
  let arr : JTypedArray[UInt16] = JTypedArray::make(buf, 0, slen)
  for i in 0..<slen {
    arr[i] = str[i].to_int().to_uint16()
  }
  utf16Decoder.decode(arr)
}

///|
pub fn JAny::from_json(json : Json) -> JAny {
  match json {
    Array(arr) => {
      let res : JArray[JAny] = JArray::empty()
      for i in 0..<arr.length() {
        res[i] = JAny::from_json(arr[i])
      }
      res |> Js::to_any
    }
    String(str) => JTextDecoder::from_string(str) |> Js::to_any
    Number(num) => num |> Js::to_any
    False => js_false
    True => js_true
    Null => js_null
    Object(map) => {
      let obj = JObject::empty()
      for key, val in map {
        obj[JTextDecoder::from_string(key)] = JAny::from_json(val).to_any()
      }
      obj.to_any()
    }
  }
}
