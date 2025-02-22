import { Prototype } from "./moonbit_ffi"

export let codegen = ( ty: Prototype,url: string="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/") => {
  let tpds = Object.getOwnPropertyDescriptors(ty.prototype)
  let buf: [string, string][] = []
  let mod = ty.name
  url += mod
  let ffi_decl = (fn: string) => `pub fn J${mod}::${fn}(self : J${mod}) = "${mod}" "${fn}"`

  // method
  for (const [key, tpd] of Object.entries(tpds)) {
    if (key === 'constructor' && typeof tpd.value === 'function') {
      let decl = ffi_decl(key)
      let doc = `///| [MDN](${url}/${mod})`
      console.log(doc)
      console.log(decl)
    } else {
      let fn = key
      let doc = `///| [MDN](${url}/${fn})`
      let name = fn
      if (name === 'constructor' && typeof tpd.value === 'function') {
        name = name
      } else {
        if (typeof tpd.value !== 'undefined') {
          name = name
        } else if (typeof tpd.get === 'function') {
          name = "get_" + name
        } else if (typeof tpd.set === 'function') {
          name = "set_" + name
        } else {
          name = ""
        }
        if (name.length !== 0) {
          let decl = ffi_decl(name)
          console.log(doc)
          console.log(decl)
        }
      }
    }
  }
  let tpds2 = Object.getOwnPropertyDescriptors(ty)
  // static
  for (const [key, tpd] of Object.entries(tpds2)) {
    let fn = key
    let doc = `///| [MDN](${url}/${fn})`
    let name = key
    if (typeof tpd.value === 'function') {
      name = "static_" + name
    } else if (typeof tpd.get === 'function') {
      name = "static_" + name
    } else if (typeof tpd.set === 'function') {
      name = "static_set_" + name
    } else {
      name = ""
    } if (name.length !== 0) {
      let decl = ffi_decl(name)
      console.log(doc)
      console.log(decl)
    }
  }
}