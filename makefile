BIN_DIR ?= node_modules/.bin
P="\\033[32m[+]\\033[0m"

check-dep:
	@echo "$(P) Install dependencies of all packages"
	yarn install --frozen-lockfile

build: check-dep
	@echo "$(P) Run \`npm run build\` of all packages with \`scripts.build\`"
	$(BIN_DIR)/lerna run --stream build

.PHONY: check-dep build
