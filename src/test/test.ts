import fs from 'node:fs/promises';
import { importObject } from '../../ts-import-object/import-object.js'

let wasmUrl = './target/wasm-gc/release/build/test/test.wasm'
const wasmBuffer = await fs.readFile(wasmUrl);
const wasmModule = await WebAssembly.instantiate(wasmBuffer, importObject);
let { entry_test,
  catch_panic
} = wasmModule.instance.exports as {
  entry_test: arrow<Unit, Unit>,
  catch_panic: arrow<Unit, Unit>
}

catch_panic()
entry_test()