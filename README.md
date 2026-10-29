# illusory0x0/jscore (WIP)

# Description

JavaScript core library' s binding support js, wasm, wasm-gc backend.

Because the performance of the WASM FFI call is a concern, it is not recommended for extensive use, especially for reading and writing arrays and maps.


## Roadmap

### Indexed collections

* Array
* Int8Array
* Uint8Array
* Uint8ClampedArray
* Int16Array
* Uint16Array
* Int32Array
* Uint32Array
* BigInt64Array
* BigUint64Array
* Float16Array
* Float32Array
* Float64Array

### Error 

* Error
* AggregateError
* EvalError
* RangeError
* ReferenceError
* SyntaxError
* TypeError
* URIError

### Date 

* Date 

### Text processing

* String 
* RegExp

### Encoding and Decoding

* TextEncoder
* TextDecoder

### Console 

* Console

## Object 

* Object

### Keyed collections

* Map
* Set

### memory management

* WeakRef
* WeakMap

* WeakSet

### Structured data

* ArrayBuffer
* SharedArrayBuffer
* DataView


## TODO 
* Atomics
* JSON
* Promise
* FinalizationRegistry

## Tests

Install JavaScript tooling with `pnpm install --frozen-lockfile --ignore-scripts`.
For each of `wasm`, `wasm-gc`, and `js`, run:

```sh
moon build --target wasm --debug
pnpm exec tsx src/test/test.ts wasm debug
moon build --target wasm --release
pnpm exec tsx src/test/test.ts wasm release
```

The harness exercises JavaScript constructors, strings, errors, and callback
control flow. It includes assertions for UTF-16 round trips and nested
try/catch/finally behavior. The older collection smoke tests marked as disabled
in `entry.mbt` remain disabled; they are not included in the coverage claim.
Use the checked-in pnpm lockfile; the legacy npm lockfile is not synchronized.

When updating the MoonBit package, also use the matching `ts-import-object`
files. The exception bridge now returns caught errors through typed FFI calls,
which requires the new `try_catch`, `has_exception`, `exception`, and
`try_finally` host imports.
