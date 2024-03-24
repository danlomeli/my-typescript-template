PATH := ./node_modules/.bin:$(PATH)

setup:
	rm -rf .git
	git init
	npm install
	npm run build

build:
	tsc

test:
	jest

lint:
	eslint 'src/**/*.{ts,tsx}' --fix

format:
	prettier --write 'src/**/*.{ts,tsx,json}'
