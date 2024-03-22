setup:
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
