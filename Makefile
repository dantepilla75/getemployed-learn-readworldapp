install:
	@echo "Installing the application..."
	    pip install --upgrade pip &&\
			pip install -r requirements.txt	

format:
	@echo "Formatting code..."
	black *.py mylib/*.py

lint:
	@echo "Running linter..."
	pylint --disable=R,C *.py mylib/*.py

test:
	@echo "Running tests..."
	python -m pytest -vv --cov=mylib  --cov=main test_*.py

build:
	@echo "Building container..."
	# Add build commands here

deploy:
	@echo "Deploying the application..."
	# Add deployment commands here

all	: install format lint test deploy
	@echo "All tasks completed."

