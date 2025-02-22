dev-ts:
	npx swc ./src/ts --out-dir ./target --watch

dev-mbt:
	moon build --watch 

dev:
	node --watch-path=./target/wasm-gc/release/build/mbt/mbt.wasm  .\target\src\ts\app.js