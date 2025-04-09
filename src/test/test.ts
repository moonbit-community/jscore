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




main(Backend.wasm,BuildType.debug)   
main(Backend.js,BuildType.debug) 
main(Backend.wasm_gc,BuildType.debug) 