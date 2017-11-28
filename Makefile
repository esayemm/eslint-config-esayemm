all: help

help:
	@echo ""
	@echo "  deps       - Installs dependencies"
	@echo "  test       - Runs tests"
	@echo "  test.watch - TDD"
	@echo ""

.PHONY: deps
deps:
	@yarn

test:
	@./node_modules/mocha/bin/mocha \
		$$(find . -name '*.spec.js' ! -ipath '*node_modules*')

test.watch:
	@./node_modules/mocha/bin/mocha \
		--watch \
		$$(find . -name '*.spec.js' ! -ipath '*node_modules*')
