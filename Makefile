mbt:
	moon build --watch 

dev:
	npx tsx \
	--test-update-snapshots \
	--watch-path=target/wasm-gc/release/build/jcore.wasm \
	--watch-path=./ts-import-object \
	--watch-path=./test/test.ts \
	./test/test.ts


benchmark:
	npx tsx \
	./test/benchmark.ts