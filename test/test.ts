import fs from 'node:fs/promises';
import { importObject } from '../ts-import-object/import-object.js'

const wasmBuffer = await fs.readFile('target/wasm-gc/release/build/jcore.wasm');
const wasmModule = await WebAssembly.instantiate(wasmBuffer, importObject);
let { entry_test,
} = wasmModule.instance.exports as {
  entry_test: arrow<Unit, Unit>
}


entry_test()