mbt:
	moon build --watch --target all --debug

test:
	npx tsx \
	--watch-path=_build \
	--watch-path=./src/test/test.ts \
	./src/test/test.ts

benchmark:
	moon build --target all --release 
	npx tsx \
	src\benchmark\benchmark.ts