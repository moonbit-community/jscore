# illusory0x0/jcore

# Description

JavaScript core library' s wasm binding.

Because the performance of the WASM FFI call is a concern, it is not recommended for extensive use, especially for reading and writing arrays and maps.

Run [benchmark](#benchmark) to see more details. 


# Usage

## Install Library 
```bash
moon add illusory0x0/jcore
pnpm -D i @types/node tsx
```



## Configure moon.pkg.json 
```json
// src/entry/moon.pkg.json
{
  "import": [
    "illusory0x0/jcore"
  ],
  "link": {
    "wasm-gc" : {
      "exports": ["entry"]
    }
  }
} 
```

## use wasm in NodeJs (TypeScript)

```moonbit
// src/entry/entry.mbt
pub fn entry() -> Unit {
  @jcore.console.log(@jcore.TextDecoder::from_string("hello world"))
  @jcore.console.log(@jcore.Date::now() |> @jcore.Date::from_timestamp)
}
```


```typescript
// ./app.ts
import { importObject } from './.mooncakes/illusory0x0/jcore/ts-import-object/import-object.js'
import fs from 'node:fs/promises';

const wasmBuffer = await fs.readFile('target/wasm-gc/release/build/entry/entry.wasm');

// replace wasm path with your path 
const wasmModule = await WebAssembly.instantiate(wasmBuffer, importObject);
let { entry,
} = wasmModule.instance.exports as {
  entry: () => void 
}

entry()
```



```bash 
moon build     # build wasm file
npx tsx app.ts # run app
```

## benchmark

```bash
pnpm -D i # install dev dependency
moon build
make benchmark
```


## Test

```bash
pnpm -D i # install dev dependency
moon build
make dev
```


## Supported API 

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
