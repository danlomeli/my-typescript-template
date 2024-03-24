PATH := ./node_modules/.bin:$(PATH)

setup:
	rm -rf .git
	git init
	npm install
	npm run build
	-xargs npm install -g < $(HOME)/playground/global-packages.txt

build:
	tsc

test:
	jest

lint:
	eslint 'src/**/*.{ts,tsx}' --fix

format:
	prettier --write 'src/**/*.{ts,tsx,json}'
