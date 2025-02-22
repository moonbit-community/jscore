///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder/decode)
fn JTextDecoder::_decode(self : JTextDecoder, buffer : JAny) -> JString = "TextDecoder" "decode"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder/decode)
pub fn JTextDecoder::decode[T](
  self : JTextDecoder,
  buffer : JTypedArray[T]
) -> JString {
  coerce(JTextDecoder::_decode)(self, buffer)
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder/encoding)
pub fn JTextDecoder::encoding(self : JTextDecoder) -> JString = "TextDecoder" "get_encoding"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder/fatal)
pub fn JTextDecoder::fatal(self : JTextDecoder) -> Bool = "TextDecoder" "get_fatal"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder/ignoreBOM)
pub fn JTextDecoder::ignoreBOM(self : JTextDecoder) -> Bool = "TextDecoder" "get_ignoreBOM"
