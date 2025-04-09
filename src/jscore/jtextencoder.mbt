///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoder/encoding)
pub fn JTextEncoder::encoding(self : JTextEncoder) -> JString = "illusory0x0_core_TextEncoder" "get_encoding"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoder/encode)
pub fn JTextEncoder::encode(self : JTextEncoder, str : JString) -> JUint8Array = "illusory0x0_core_TextEncoder" "encode"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoder/encodeInto)
pub fn JTextEncoder::encodeInto(
  self : JTextEncoder,
  str : JString,
  buf : JUint8Array
) -> JObject = "illusory0x0_core_TextEncoder" "encodeInto"
