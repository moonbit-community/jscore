// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray

let buffer_size = 8192
let len = 0
let buf = new Uint16Array(buffer_size)

// https://jsperf.app/join-concat/215/preview

let lf: UInt16 = '\n'.charCodeAt(0) // Line Feed
let cr: UInt16 = '\r'.charCodeAt(0) // Carriage Return

let utf16Decoder = new TextDecoder('utf-16')

let flush = () => {
  let content = new Uint16Array(buf.buffer, 0, len) // create a view from buf.buffer, doesn't copy anything
  
  console.assert(content.buffer === buf.buffer)

  let str = utf16Decoder.decode(content)
  console.log(str)
  len = 0
}

let print_char = (ch: UInt16) => {
  switch (ch) {
    case lf: {
      flush()
    } break;
    case cr: break; // skip cr
    default: {
      if (len + 1 < buf.length) {
        buf[len] = ch 
        ++len
      } else {
        flush()
      }
    } break;
  }
}
export { print_char, flush }