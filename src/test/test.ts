import { import_object } from '../../ts-import-object/import-object.js'
import { Backend, BuildType, moonbit_ffi } from '../../ts-import-object/moonbit_ffi.js'

let main = async (backend: Backend, build_type : BuildType) => {
  let cwd = process.cwd().replaceAll("\\", "/")
  let { entry_test } = (await moonbit_ffi(backend, cwd, build_type, "test", import_object)) as {
    entry_test: arrow<Unit, Unit>,
    // catch_panic: arrow<Unit, Unit>
  }
  // catch_panic()
  entry_test()

}




const backendName = process.argv[2] ?? "wasm"
const buildName = process.argv[3] ?? "debug"
const backends = { wasm: Backend.wasm, "wasm-gc": Backend.wasm_gc, js: Backend.js }
if (!(backendName in backends) || !["debug", "release"].includes(buildName)) {
  throw new Error("Usage: test.ts [wasm|wasm-gc|js] [debug|release]")
}
await main(backends[backendName as keyof typeof backends], buildName as BuildType)
