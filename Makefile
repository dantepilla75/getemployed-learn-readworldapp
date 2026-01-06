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
	docker build -t deploy-fastapi .

run :
	@echo "Run docker container..."
	#docker run -p 127.0.0.1:8080:8080 610f6507c133

deploy:
	@echo "Deploying the application..."
	# Add deployment commands here

all	: install format lint test deploy
	@echo "All tasks completed."

