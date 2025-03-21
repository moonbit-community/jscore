mbt:
	moon build --watch 

test:
	npx tsx \
	--test-update-snapshots \
	--watch-path=target\wasm-gc\release\build\test\test.wasm \
	--watch-path=./ts-import-object \
	--watch-path=./src/test/test.ts \
	./src/test/test.ts


benchmark:
	npx tsx \
	src\benchmark\benchmark.ts