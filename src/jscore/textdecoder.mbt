///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder/decode)
fn TextDecoder::_decode(self : TextDecoder, buffer : Any) -> JString = "illusory0x0_core_TextDecoder" "decode"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder/decode)
pub fn TextDecoder::decode[T](
  self : TextDecoder,
  buffer : TypedArray[T]
) -> JString {
  coerce(TextDecoder::_decode)(self, buffer)
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder/encoding)
pub fn TextDecoder::encoding(self : TextDecoder) -> JString = "illusory0x0_core_TextDecoder" "get_encoding"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder/fatal)
pub fn TextDecoder::fatal(self : TextDecoder) -> Bool = "illusory0x0_core_TextDecoder" "get_fatal"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder/ignoreBOM)
pub fn TextDecoder::ignoreBOM(self : TextDecoder) -> Bool = "illusory0x0_core_TextDecoder" "get_ignoreBOM"
