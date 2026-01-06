install:
	@echo "Installing the application..."
	    pip install --upgrade pip &&\
			pip install -r requirements.txt	
post-install:
	@echo "Post installation steps..."
	python -m textblob.download_corpora

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
	aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 333723060694.dkr.ecr.ap-south-1.amazonaws.com
	docker build -t getemployednow/fastapiwiki .
	docker tag getemployednow/fastapiwiki:latest 333723060694.dkr.ecr.ap-south-1.amazonaws.com/getemployednow/fastapiwiki:latest
	docker push 333723060694.dkr.ecr.ap-south-1.amazonaws.com/getemployednow/fastapiwiki:latest

all	: install post-install format lint test deploy
	@echo "All tasks completed."

