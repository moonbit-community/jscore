///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoder/encoding)
pub fn TextEncoder::encoding(self : TextEncoder) -> JString = "illusory0x0_core_TextEncoder" "get_encoding"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoder/encode)
pub fn TextEncoder::encode(self : TextEncoder, str : JString) -> Uint8Array = "illusory0x0_core_TextEncoder" "encode"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoder/encodeInto)
pub fn TextEncoder::encodeInto(
  self : TextEncoder,
  str : JString,
  buf : Uint8Array
) -> Object = "illusory0x0_core_TextEncoder" "encodeInto"
